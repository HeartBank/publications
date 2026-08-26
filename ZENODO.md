# Zenodo deposits — the institutional corpus

This repo mints DOIs for **HeartBank's institutional corpus**. The pipeline is a port of the one
in `thonly/publications`, with one addition that matters more than anything else here: **a gate.**

## Scope — selective, never blanket

⭐ **The test: DOI what makes a claim someone could cite and build on. Never DOI what states what
we will do.**

| Directory | DOI? | Why |
|---|---|---|
| `white-papers` | ✅ yes | research-shaped; citable contributions |
| `positions` | ⚖️ **one at a time** | the *argued* ones make citable claims about the world; **commitment-shaped** ones (*"HeartBank will never become a chartered bank"*) are policy, not contribution |
| `annual-reports` | ⛔ no | a DOI on a pre-revenue institution's annual report reads as inflation |
| `press` | ⛔ no | — |

⚠️⚠️ **The reason not to deposit everything is the reason to deposit anything.** The purpose is
academic engagement — and **nobody DOIs their company's position statements.** A blanket mint over
institutional communications reads as status-borrowing and **damages the credibility it is meant to
build.** A selective policy signals the institution knows the difference.

## The gate, and it fails closed

A paper is deposited **only** if its YAML front matter carries:

```yaml
zenodo: true
```

**No flag means no**, never "not yet decided". The flag lives on the document because that is where
the judgement belongs, and because a separate allowlist is a file someone has to remember to
update. ⛔ **A mint is irreversible** — there is no un-minting a DOI, so the default must be refusal.

Papers with no YAML front matter (the older table-header position style) are invisible to the
pipeline by construction. That is not a bug to fix in passing: converting one is an explicit act,
and it should be, because it is the moment the scope decision gets made.

## Running it

```sh
# rehearse first — this pipeline is young and a mint cannot be undone
ZENODO_TOKEN=$(security find-generic-password -s zenodo-token-sandbox -w) \
  ./scripts/zenodo-deposit.py --sandbox --only <slug> --create --publish

# then live
ZENODO_TOKEN=$(security find-generic-password -s zenodo-token -w) \
  ./scripts/zenodo-deposit.py --only <slug> --create --publish

python3 scripts/make-bibtex.py
```

⚠️ **Add the `**Keywords:**` line to the paper BEFORE the first live deposit.** Without one the
record deposits with a single factual fallback keyword and is nearly unsearchable — and fixing it
afterwards changes the file's SHA-256, which forces a new version of a record that did not need
one. **It is free before the mint and costly after.**

## State

- `zenodo-dois.json` — slug → concept DOI, version DOI, deposition id, SHA-256.
- `zenodo-works.bib` — generated; uses **concept** DOIs so a citation always resolves to the
  newest version.
- ⚠️ **A stale deposit never errors.** It silently serves superseded text while the site serves
  the current one. Diff the stored SHA against the file rather than trusting that it looks fine.

## Relation to the other evidence legs

Zenodo is the **reference** leg — durability and reach of *citation*. ⛔ **It is not prior art and
not a date claim**; OpenTimestamps (Bitcoin) and RFC 3161 carry those. Depositing a paper does not
establish when it was written.

## ⚠️ Ported-script defects to check on the FIRST deposit from a new repo

A port inherits the source repo's identity, and the wrong parts of it are invisible until they are
on a permanent public record. **Found on this repo's very first mint (2026-08-26), by reading the
live record back rather than trusting the run's success line:**

- **`canonical`** was still `https://thonly.org/research/{slug}` — the institutional corpus lives at
  `https://heartbank.net/{genre}/{slug}`. This also fed the `isIdenticalTo` related identifier, so
  the record pointed a citation at a URL that does not exist.
- **The provenance blurb** still said *"part of the THonly research corpus."*
- **The doc-type note** still branched on `defensive-publications` / `essays`, neither of which
  exists here.

⭐ **The fix path, worth knowing because it is not a new version:** Zenodo lets a published record's
**metadata** be edited in place — `POST /actions/edit` → `PUT {"metadata": …}` → `POST /actions/publish`.
**Same DOI, no new version**, because a metadata edit updates the DOI rather than registering one.
Reuse `build_metadata()` from the deposit script rather than hand-writing the payload, so the
corrected record cannot diverge from what the script would produce next time.

⛔ **Standing check before any first deposit from a new repo: read the live record back and verify
the canonical URL resolves.** The deposit script prints a success line either way.
