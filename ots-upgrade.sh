#!/usr/bin/env sh
#
# Bake the Bitcoin attestations into every OpenTimestamps proof in this repository.
#
# A freshly created proof carries only *calendar* attestations, which are pending —
# until upgraded, verification still depends on those calendar servers staying online.
# The upgrade is what converts a convenience into evidence. See TIMESTAMPS.md.
#
# Safe to re-run as often as you like: already-upgraded proofs are no-ops and
# still-pending ones are left untouched. Run it a few hours after any `ots stamp`,
# and again the next day if anything was still pending.
#
# Never runs `ots stamp` — stamping overwrites <paper>.md.ots and would destroy an
# existing proof. Upgrade only. When a paper is REVISED, rotate the old proof to
# <paper>.md.rN.ots by hand before stamping the new text, and log it in TIMESTAMPS.md.
#
# Added 2026-08-22. This repo had no local upgrade path at all — only the weekly
# .github/workflows/ots-upgrade.yml, which is a backstop, not the plan: waiting for
# Sunday leaves a window in which a proof is calendar-only, and CI cannot be run at
# the natural break where the text actually changed.
#
# Discovers proofs with `find` rather than fixed globs. An enumerated list is correct
# on the day it is written and silently stops covering the tree the moment a directory
# is added — and the failure is invisible, because the summary is computed from the
# same list as the work. (Found 2026-08-22 in the sibling repos, where root-level and
# timestamps/manifests proofs sat calendar-only for weeks because no glob visited them.)
#
set -eu
cd "$(dirname "$0")"

VENV="${OTS_VENV:-$HOME/.cache/ots-venv}"

if [ ! -x "$VENV/bin/ots" ]; then
    printf 'installing opentimestamps-client into %s ...\n\n' "$VENV"
    python3 -m venv "$VENV"
    "$VENV/bin/pip" install --quiet --upgrade pip
    "$VENV/bin/pip" install --quiet opentimestamps-client
fi

# One file per invocation, deliberately.
#
# `ots upgrade a.ots b.ots c.ots` exits at the FIRST proof whose commitment has
# not confirmed yet, leaving every later file unexamined — and it reports that
# with the alarming line "Failed! Timestamp not complete", which is not a failure
# at all. Batching therefore both under-reports and misleads. Looping costs a few
# extra seconds and examines all of them.
find . -name '*.ots' ! -name '*.bak' ! -path './.git/*' -print | sort | while read -r f; do
    before=$(shasum -a 256 "$f" | cut -d' ' -f1)
    "$VENV/bin/ots" upgrade "$f" >/dev/null 2>&1 || true
    after=$(shasum -a 256 "$f" | cut -d' ' -f1)
    [ "$before" = "$after" ] || printf '  upgraded  %s\n' "$f"
    # A proof is COMPLETE once it carries at least one BitcoinBlockHeaderAttestation.
    # It keeps residual PendingAttestation lines for calendars that have not confirmed,
    # so "contains the word pending" is NOT the test — an upgraded proof still contains it.
    # Counters would live in a subshell under `find | while`, so the summary below
    # re-counts from disk rather than trusting them.
done

# ots writes <file>.bak beside each upgraded proof; gitignored, but tidy up.
find . -name '*.ots.bak' ! -path './.git/*' -delete

total=$(find . -name '*.ots' ! -name '*.bak' ! -path './.git/*' | wc -l | tr -d ' ')
pending=$(find . -name '*.ots' ! -name '*.bak' ! -path './.git/*' -print0 \
    | xargs -0 -I{} sh -c '"$0" info "{}" 2>/dev/null | grep -q BitcoinBlockHeaderAttestation || echo x' "$VENV/bin/ots" \
    | wc -l | tr -d ' ')

printf '\n%s proofs — %s still pending Bitcoin confirmation (re-counted from disk).\n' "$total" "$pending"

if [ "$pending" -gt 0 ]; then
    printf '\nStill-pending is NOT an error: those commitments have not confirmed on-chain\n'
    printf 'yet (typically 1-6 hours after stamping, occasionally longer). Re-run later.\n'
fi

if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
    printf '\nProofs changed. Commit them:\n\n'
    printf "    git add -A && git commit -m 'timestamps: upgrade proofs with Bitcoin attestations' && git push\n\n"
    printf 'No Co-Authored-By trailer — this repo forbids AI attribution in commits.\n'
fi
