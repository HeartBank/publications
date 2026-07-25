# Cryptographic timestamps

Every paper in this repository carries an **OpenTimestamps** proof — the `<paper>.md.ots`
file beside it. The proof commits the paper's SHA-256 to the Bitcoin blockchain, so the
document's existence at a point in time can be verified by anyone, forever, **without
trusting this repository, GitHub, the Internet Archive, or the authors.**

## Why this exists

This corpus is a defensive-publication wall: its value is that a claim was *published on a
date*. Every other timestamp we hold is self-attested and mutable — git history can be
rewritten, frontmatter edited, a registry adjusted. Third-party web archives are better but
depend on an organization continuing to exist and continuing to serve the capture.
A Bitcoin-anchored hash depends on neither.

Honest scope: a timestamp proves **this exact text existed no later than that block**.
It proves nothing about authorship, originality, or validity of any claim.

## Verifying

```sh
pip install opentimestamps-client        # or: pipx install opentimestamps-client
ots verify defensive-publications/<slug>.md.ots
```

Trustless verification uses a local Bitcoin node. Without one, the attestation still names
a specific block whose merkle root can be checked against any public block explorer.

If the file has been edited since stamping, verification fails — that is the point. A paper
revised after stamping must be re-stamped, and **both proofs kept**: the old one attests the
earlier text, the new one the revision.

## Maintenance — the one step that must not be forgotten

A freshly created proof carries only *calendar* attestations, which are pending. Once the
commitment is confirmed on-chain (roughly one to six hours), run:

```sh
ots upgrade **/*.ots
```

This bakes the Bitcoin attestation into the proof file, after which the calendar servers are
no longer needed for verification. **Until upgraded, a proof still depends on those servers
staying online** — so the upgrade is what converts a convenience into evidence. Commit the
upgraded files.

## Coverage

Stamped 2026-07-25. Papers added later must be stamped when they are pushed:

```sh
ots stamp <new-paper>.md
```
