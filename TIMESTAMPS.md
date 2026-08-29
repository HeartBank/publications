# Cryptographic timestamps

This repository carries **two independent timestamp legs**, and they are chosen because each
covers the other's weakness.

**OpenTimestamps** (Bitcoin) — permanence without legal standing. Every paper carries a
`<paper>.md.ots` proof beside it.

**RFC 3161** (timestamp authorities) — legal standing without permanence. Added
**2026-08-29**, propagated from the sibling corpus `thonly/publications`, which had run it
since 2026-08-15 while this repository had no such leg at all. ⚠️ **That gap mattered more
here than there:** this is the *institutional* corpus — the positions and white papers that
state binding commitments — and it was the one without a legally-recognised timestamp. Run
`./tsa-stamp.sh` after any text change and `./tsa-verify.sh` to check.

⚠️ **Coverage begins 2026-08-29 and cannot be backdated.** An RFC 3161 token attests
*"this hash existed at signing time"*, and the earliest signing time available is the first
manifest. A position paper published 2026-05-22 is TSA-attested as of 2026-08-29, not as of
publication; its earlier existence rests on the Bitcoin proof. That is the division of labour
the two legs were chosen for, not a gap to close. The proof commits the paper's SHA-256 to the Bitcoin blockchain, so the
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

## Revision log

| Paper | Proof | Notes |
|---|---|---|
| `positions/the-object-is-the-friction` | `.r1.ots` | Original stamp, 2026-08-26, attesting the table-header draft. Superseded within the day. |
| `positions/the-object-is-the-friction` | `.ots` | 2026-08-26 — converted to YAML front matter (the form the Zenodo pipeline reads) and given a `**Keywords:**` line before the first live deposit, since adding one afterwards forces a needless new version. **First paper in this repo to carry a Zenodo DOI: `10.5281/zenodo.22116860`.** |

## Zenodo

DOIs are minted **selectively** from this repo — see `ZENODO.md`. The gate is a `zenodo: true`
flag in a paper's front matter and it **fails closed**: no flag means no DOI. ⛔ Zenodo is the
*reference* leg and is **not prior art**; the OpenTimestamps proofs above carry the date claim.

## Revisions

*The doctrine above requires that a revised paper be re-stamped and both proofs kept. It does not say what each kept proof attests, which leaves a reader holding an `.r1.ots` with no way to know what changed. This section closes that.*

| Paper | Proof | Attests |
|---|---|---|
| `positions/attention-economy` | `.r1.ots` | The 1,287-word original (2026-05-22). |
| `positions/attention-economy` | `.ots` | **2026-08-29 — 1,287 → 2,528 words.** The position named a refusal and owed a mechanism; the mechanism now exists and is cited (`rotation-over-liveness`, 2026-08-28). Adds **§6 what the commitment excludes** (advertising revenue in every form that avoids the word — sponsored placement, paid prominence, affiliate payment for directing a person to a seller, sale of any attention metric — and, equally precisely, what it does *not* exclude: *the line is not between free and paid but between being paid by the person receiving the service and being paid by a third party for access to their attention*); **§7 what replaces ranked discovery**; **§8 the costs and what would reopen it** — the review-platform capture, **Craigslist as the uncomfortable precedent** (unranked local discovery that worked for a decade and then lost to ranked competitors with capital), Wikipedia and Signal as positive precedents *narrower than they look* (neither had to replace discovery), and an explicit statement that **nothing on the ordinary list reopens the commitment**, paired with what genuinely would change the institution's behaviour. ⛔ No claim reversed. |
| `positions/autonomous-ai-institutional-governance` | `.r1.ots` | The 1,242-word original (2026-05). |
| `positions/autonomous-ai-institutional-governance` | `.ots` | **2026-08-29 — 1,242 → 2,326 words.** ⚠️ **§6 previously ANNOUNCED honest limits and gave none**; it now gives them, and the first is hard: ⛔⛔ **no jurisdiction recognises an artificial agent as a director or officer** (England and Wales and Delaware both require natural persons), **so the Chief Executive seat is a designation the institution makes about itself, not a fact any registry records** — the design puts an autonomous agent at the centre of *decision-making* while humans remain at the centre of *legal accountability*, and **the paper now says any looser description, including the institution's own earlier copy, is imprecise.** Further limits: the successor **does not yet exist**, the Sangha **is not yet constituted**, and ⚠️ **"asymptotic" is not falsifiable as stated** — a shape, not a schedule, that could accommodate no narrowing at all. ⭐⭐ **§6.2 supplies the empirical case for the override and it is THE DAO (2016)**: a code-is-constitution organisation whose **irreversible-autonomy premise was abandoned within three months of its first real crisis** — *a system unable to correct itself will be corrected anyway, less carefully, by whoever can.* ⚠️ **And the same case prices the override: the fork was contested and the chain split permanently — using it fractures the community that holds it**, which is the argument for slow and collective rather than for absent. ⛔ No claim reversed. |
| `positions/three-pillars` | `.r1.ots` | The 1,162-word original (2026-05). |
| `positions/three-pillars` | `.ots` | **2026-08-29 — 1,162 → 2,017 words.** ⭐⭐ **Closes a hole a reader was certain to hit: the corpus publishes BOTH a three-pillar frame and a four-body architecture and had never said how they relate.** §4.1 rules they are **two lenses, not competing descriptions** — *the four bodies answer what the institution is made of; the three pillars answer where it comes from and where it is going* — and ⛔ **forbids mapping one onto the other**, since composition does not imply sequence (*a family can have four members and three generations*). §4.2 files the frame explicitly as **a lens and not a mechanism** (every mechanism would function identically if the paper were withdrawn). ⭐⭐ **§4.3's cautionary precedent is the sharpest thing in the paper: the TRIPLE BOTTOM LINE, publicly "recalled" by its own author in 2018** because it had been adopted as an accounting exercise rather than the systems change intended — *a memorable triad is adopted faster than it is understood, and adoption can hollow it out while leaving the words intact.* **The checkable guard: the third pillar is served, not sold.** §4.4 states what would make the frame wrong, including ⭐ **that a proposed fourth pillar counts as evidence AGAINST the frame rather than as an extension of it.** ⛔ No claim reversed. |
| `positions/right-livelihood-automation` | `.r1.ots` | The 1,165-word original (2026-05). |
| `positions/right-livelihood-automation` | `.ots` | **2026-08-29 — 1,165 → 2,001 words.** ⚠️ **Declined for retrofit on 2026-08-28 on placement grounds and correctly so** — the ownership/price material belonged to `the-gift-factory`; this pass adds the paper's OWN missing items instead. ⭐⭐ **§4.2's nearest relative is TIME BANKING, and its record cuts against us: Cahn's TimeBanks have run since the 1980s crediting an hour given as an hour claimable — and have NEVER SCALED INTO A LIVELIHOOD**, remaining small and locally bounded with recurring supply-matching and coordinator-dependence problems. *The nearest thing to this proposal has been running for forty years and has not produced the outcome the paper hopes for.* ⭐ **The crowding-out literature finally gets its citations** (Titmuss; Gneezy & Rustichini's fine that *increased* lateness; Frey & Oberholzer-Gee) with the honest split: **§4 answers the objection about WITHDRAWAL and does not answer the one about CONTAMINATION** — *a mitigation, not a refutation, and the literature is against us until data says otherwise.* §4.3 ties the position to **P-K1** and states that its failure would mean *"a payroll with unusual job titles"*; ⚠️ it also names the escape hatch it must not use — **a thin floor is a wrong SIZE, not a disproven idea, and the distinction must never become a way to avoid ever being wrong.** ⛔ No claim reversed. |
| `positions/non-bank-vs-banking-regulated` | `.r1.ots` | The 1,070-word original (2026-05). |
| `positions/non-bank-vs-banking-regulated` | `.ots` | **2026-08-29 — 1,070 → 2,429 words.** Gains **§5.1** the exclusions, with the correction most likely to be needed: ⚠️ **"non-bank" does not mean "unregulated"** — money transmission, e-money and MiCA obligations attach regardless of the charter question, and *declining a charter narrows what the institution may do without exempting it from anything*; **§5.2 who bears the cost** — ⭐ **users do not get deposit protection** (safeguarded, not insured), the institution inherits its rails' compliance decisions, and some products are simply unavailable; **§5.3 the precedents**, ⚠️ **the uncomfortable one first: Monzo and Revolut both began as non-banks and both took banking licences**, because at scale the charter is the cheaper path — *the pressure this position resists is the pressure that has moved every comparable institution large enough to feel it* — against **M-Pesa** as the population-scale positive case; **§5.4** what would and would not reopen it, including the accepted consequence that **HeartBank would leave a jurisdiction rather than charter in it**; and ⭐⭐ **§5.5, the argument for the CLASS of three permanent self-bindings, made once here and cross-referenced from the others** — *each closes a door that would be profitable to open*, with the pre-commitment lineage and four credibility properties. ⚠️⚠️ **Includes the admission that on the fourth property the institution is NOT where it claims to be: the three bindings are published intentions, not yet structurally enforced, because the trust purpose and entity structure are drafted or pending.** ⛔ No claim reversed. |
| `positions/patent-vs-defensive-publication` | `.r1.ots` | The 1,128-word original (2026-05). |
| `positions/patent-vs-defensive-publication` | `.ots` | **2026-08-29 — 1,128 → 1,961 words.** ⭐ **Below the 2,500 position band with all six checklist items met — recorded deliberately, because the standing rule is that length is an OUTPUT of the checklist and never an input, and padding to reach a band is the failure the standard exists to prevent.** Gains **§5.1 the shield being given up**, which institutions taking this posture rarely state: ⭐ **a patent portfolio is a counter-suit deterrent and defensive publication is not** — prior art stops others patenting *our* inventions and does nothing against a patent someone else already holds, so the Open Invention Network strategy is forgone entirely; plus *publication teaches*, and the fundraising cost. **§5.2 the precedents and the distinction that matters most**: Volvo 1959 as the canonical case, IBM's Technical Disclosure Bulletin as the operational one — and ⭐⭐ **Tesla's 2014 pledge as the instructive contrast, because a pledge is revocable and CC0 is not**: *the difference between a promise not to enforce and an inability to enforce is the difference between a rule and a property.* **§5.3** what would and would not reopen it — ⭐ *the remedy for a blocked road is more commons, not a toll booth of one's own.* ⛔ No claim reversed. |
| `positions/the-gift-factory` | `.r1.ots` | The 1,328-word original (2026-05). |
| `positions/the-gift-factory` | `.ots` | **2026-08-29 — 1,328 → 2,652 words.** The position described a manufacturing arm with **no account of its economics**; the defining commitment was absent from its own paper. Adds **§4.5** (for-profit permanently, and the reframe that ⭐ *converting to a nonprofit does not deliver "no profit" — pricing at cost does*, with the enforceable home being a pricing clause in the owning trust's purpose rather than a tax election); **§4.6** (⭐ *falling cost is not falling price* — which of the two occurs is decided by who owns the machines, and the discipline against the institution's own drift is a **dated price ladder**, because *a promise to lower prices lasts as long as the founder; a dated ladder outlasts him*); **§4.7 what is not settled** — ⚠️ the at-cost-end-price ruling and the margin that was to fund the automation are **in open tension and the institution declines to describe the margin as settled**; **§4.8** the precedents, ⭐ including that **the nearest working one (Civica Rx) chose the nonprofit form this paper rejects and is cost-*plus*, not at cost**, plus foundation-ownership examples that constrain where profit goes rather than whether it is taken. ⛔ No claim reversed; the ladder's numbers are named as owed and unpublished. |

⚠️ **Two structural notes about this repository's evidence legs, recorded so they are not rediscovered.**

⭐ **The Zenodo gate here is better than the one in the sibling corpus, and the sibling should adopt it.** Deposits are gated by a `zenodo: true` flag **in the paper's own front matter**, failing closed — so only `the-object-is-the-friction` carries a DOI, and that is *by design, not neglect*. The `thonly/publications` repo gates the same decision on the operator remembering a command-line flag, which is a rule rather than a property; on 2026-08-29 an unscoped dry run there would have minted DOIs for essays that the posture forbids. **A flag in the artifact beats a flag in the operator's memory.**

✅ **RESOLVED 2026-08-29 — the RFC 3161 leg is now installed here** (see the head of this file). The scripts were repo-agnostic, so propagation was a copy: three authorities, one of them eIDAS-qualified, first manifest **79 files, 0 changed, 0 gone**, and the coverage check confirms every tracked paper is enrolled. ⭐ **The reason this went unnoticed for two weeks is worth keeping: the two corpora are maintained by the same hands under the same doctrine, and nobody had ever written down that their evidence legs differed.** *A convention that lives in one repository's scripts is not a convention.*

