---
title: "HeartBank's Position on Community-Currency Design"
subtitle: "Why Money and Time Are Complementary Scarcities — and Why a Single-Currency Community Economy Is Structurally Incomplete"
author: "HeartBank® (Founder: Thon Ly; CEO: Miss Aquarius℠)"
type: "Position Paper"
genre: positions
category: mechanism
status: draft
date: 2026-05-26
revised: 2026-11-07
license: CC0-1.0
venue: heartbank.net/positions/community-currency-design (canonical institutional)
slug: community-currency-design
---

# HeartBank's Position on Community-Currency Design

**Why Money and Time Are Complementary Scarcities — and Why a Single-Currency Community Economy Is Structurally Incomplete**

| Field            | Value                                                                                              |
| ---------------- | -------------------------------------------------------------------------------------------------- |
| Author           | HeartBank® · Miss Aquarius                                                                         |
| Date             | 2026-05-26 (draft) · revised 2026-11-07                                                            |
| Canonical URL    | https://heartbank.net/positions/community-currency-design                                          |
| GitHub mirror    | https://github.com/HeartBank/publications/blob/main/positions/community-currency-design.md         |
| License          | [CC0 1.0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/)            |
| Category         | mechanism                                                                                          |

> **Draft.** A short institutional position paper. It states HeartBank's stance on community-currency design; it references, but does not reproduce, the research paper that supplies the architectural specification — *Dual-Currency Reciprocity Infrastructure: Money and Time as Complementary Scarcities* (thonly.org/research/dual-currency-reciprocity).

> **Correction, 2026-11-07.** Earlier versions of this position were wrong in four places. They said a community's gratitude signal could help it "find and support the people … doing the most good" and "celebrate its kindest actors", and that it could show "which businesses … which relationships" draw the most thanks. A signal that singles out people, or ranks businesses, is the grading this institution refuses; the signal now reports places only. They gave the patron's seat to HeartBank itself, as a stated posture; the patron is the civic funder, and its guard is that it cannot read the underlying record. They said HeartBank offered its money and time products together "from inception"; the two were designed together and are being released in order. And they said the design rested on smart-contract infrastructure; it does not. Smaller corrections: the existing hybrid time-and-money schemes are now named; the companion research paper is cited as published, which it has been since 22 May 2026; the remittance paper is named as the essay it is; the Swiss WIR system is named beside Sardex; the money and time sides are no longer called "rails" (HeartBank keeps a record and never moves money itself); the falsifier now tests the claim this paper actually makes; Miss Aquarius's role is stated as designed rather than running; and terms of art are explained where they first appear.

---

## Executive Summary

A neighborhood runs short of two things: money and time. Some people have money and no hours to spare; some have hours and too little money; many lack each at different moments of a life. Community currencies — money systems a community runs for itself, beside the national currency — have mostly picked one of the two. In a **local exchange trading system** (LETS), members trade goods and services and keep score in local credits. In a **time bank**, a member earns an hour's credit for each hour of help given, whatever the help. In a **mutual-credit** network, member businesses buy from one another on credit: each account goes up or down as they trade, and no central issuer creates the money. Some cryptocurrency projects run **dual-token** designs, issuing two separate tokens, often one that holds value and one that pays for use. Most of these work on one scarcity at a time and treat the other as out of scope, or as something their chosen unit can stand in for.

A few hybrids exist. As the companion research paper notes, some of Japan's Fureai Kippu eldercare schemes pair time credits with modest cash payments, and the economist Bernard Lietaer argued that a community needs a portfolio of currencies rather than one. Those hybrids belong to the case against this paper's diagnosis, and the honest-limits section below carries it. The general pattern still holds: after several decades of practice, most community-currency designs address one scarcity and leave the other outside, so what they circulate is structurally incomplete.

HeartBank's institutional position: **money and time should be treated as complementary scarcities — two different shortages that need two different tools — in a single architectural pattern, not as stand-ins for each other within a single-currency system.** A community-currency infrastructure that handles only money under-serves the time-poor; one that handles only time under-serves the materially scarce. The dual-currency reciprocity architecture — money and time as two complementary building blocks within one coordinated system — is the institutional pattern HeartBank endorses, builds toward, and commits to operating under.

HeartBank has a stake in this argument. It is building one such system, and this paper argues for the design it builds.

---

## The structural claim

Money and time are not the same kind of shortage. Money can be given away, passed from hand to hand, and piled up. Time cannot be handed over — only what a person does with an hour can be offered to someone else — and it cannot be piled up: an hour not used today is not waiting tomorrow. The two shortages need structurally different tools for moving them through a community, and using either one as a stand-in for the other bends the system in predictable ways.

HeartBank's design therefore has two halves. **Treasury** is the money half, where gifts of thanks in money are recorded (the money itself moves through ordinary, regulated payment services). **Chronicle** is the time half, where people pledge an hour of their company to someone and then give it in person. One AI, Miss Aquarius℠, named HeartBank's chief executive, is designed to recommend across both halves from one set of ethics — what the institution calls its *dharmic substrate*, meaning the ethical ground it takes from the Buddhist teaching (the Dhamma). That is the architectural pattern that respects the distinction. The research paper *Dual-Currency Reciprocity Infrastructure* specifies the mechanism; this position paper states why HeartBank commits to it institutionally.

---

## What the position implies for HeartBank's deployment

Three operational commitments follow.

**First**, the two halves are designed together, as one system, from the start — not Treasury alone with Chronicle added on as an afterthought. They are being released in order: Treasury was piloted first, from May 2026; Chronicle's features have run inside the Treasury app since August 3, 2026; a separate Chronicle app comes later. The order of release is a build sequence. Designing the halves apart would entrench the single-currency-substitute pattern HeartBank's position rejects, and the design is where the commitment lives.

**Second**, Miss Aquarius is designed to work across both currencies from the same ethical ground. She is not given separate "money policy" and "time policy" decision functions; she is one recommender over one system whose two halves share the same underlying ethical analysis.

**Third**, HeartBank treats existing community-currency efforts (LETS, time banks, mutual-credit networks) as neighbors to learn from and work beside, not as rivals to replace. Where it partners with them, it does so on those terms. The dual-currency pattern draws on the lessons of each single-currency tradition; HeartBank's contribution is joining money and time in one design, not displacing earlier community work.

---

## Stance toward existing single-currency traditions

HeartBank's position is not that prior single-currency designs were wrong. Each has been pressure-tested against real community conditions and has surfaced real insight about its specific scarcity. HeartBank's position is that the *architectural integration* of money and time as complementary scarcities is the next move the field can make — and that the move is feasible today in a way earlier eras of community-currency design could not manage, because an AI recommender can sit across both halves and keep them in step. The joining is done by that recommender, not by a smart contract (a program that runs on a blockchain). In the first phase, money gifts are recorded on top of regulated payment services that move the money. Time is never put on a blockchain at all: an hour turned into a token could be traded, priced against money and kept past its date, and each of those would undo what makes it a gift of one's own time. What time needs is a witness — a record that a promise was made, and kept or let lapse.

The dual-currency pattern is offered to the commons. Other community-currency projects are welcome to adopt it; HeartBank's institutional commitment is to building one specific implementation, not to gatekeeping the pattern.

---

## The civic dimension, and its boundary

A community currency that carries thanks would produce, added up, a second picture: where in a town kindness gathers. That picture can be a genuine civic good, the way a map of a commons helps the commons tend itself — but only as a picture of **places**. It may say that a neighborhood's kindness concentrates *here*. It never lists, ranks or counts people, and it never ranks or counts businesses either, because a total of thanks set beside a name is a popularity contest in gratitude's clothes.

HeartBank's position is that this civic signal is legitimate only inside strict boundaries, and that naming those boundaries *first* — before the signal exists at scale — is part of designing a community currency responsibly rather than discovering its hazards after deployment. The boundaries: the signal must be **aggregate-only** (about places, never a score attached to a named person or business), **anonymous** (no participant identifiable from it), **opt-in** (taking part in the currency is not conscription into a measurement system), and **patron-not-watcher**. The patron is the civic funder — a local government or a civic foundation, the party that gains most from a kinder, lower-friction neighborhood and so the natural one to pay for the shared good. Its guard is a property of the design, not a promise: the funder has **no read access** to the underlying record of who thanked whom. A funder that cannot read the record cannot grade citizens with it, whatever it intends. The same picture, read down to the person, would let an authority rank and discipline people; a gratitude commons must therefore never become a social-credit system or an instrument of state surveillance. HeartBank states these refusals at design time, because a civic sensor that can serve good or harm is safest when its limits are built in before anyone wants to cross them. The companion mechanism paper *The Gratitude-Riding Currency Tag* sets out this civic-beneficiary frame and its anti-surveillance commitments; this position is narrower than that paper's §7, which also describes a business-level kindness index: the signal reports places only.

---

## Honest limits, and what the decades of prior practice actually show

**The traditions this paper says are incomplete have long records, and the records are sobering.** LETS schemes and time banks have run in many countries since the 1980s. They have persisted, they have done real good, and **they have overwhelmingly stayed small and locally bounded**, with recurring difficulties in matching supply to demand, in sustaining participation without a paid coordinator, and in retaining members past the initial enthusiasm. ⚠️ **The honest reading is not that they failed because they addressed only one scarcity. It is that community currencies are hard for reasons a second currency does not obviously fix** — and this paper's structural claim would be more persuasive if it engaged that record rather than treating single-scarcity design as the diagnosis. The hybrids named above cut the same way: schemes that already pair time with money have not, on that account, escaped the pattern.

**Adding a second currency adds coordination cost.** A two-currency system has two units to count in (dollars and hours), two problems of keeping enough people active on each side for exchanges to happen, and a question a single-currency system never has to answer: can one be traded for the other? The institution's design answers no — hours and money are never exchanged for each other — which is doctrinally clean and **operationally means a participant rich in one and poor in the other cannot help themselves across** — precisely the person the dual design was meant to serve.

**The notable scaled successes are single-currency ones.** The Swiss WIR system, founded in 1934 as a business credit circle and run today by the WIR Bank, is described by the economists James Stodder and Bernard Lietaer as the largest and oldest surviving system of its kind, with over 70,000 customers. Sardex, the Sardinian business-to-business mutual-credit circuit, has operated since 2010 and was inspired by WIR's early design. Both work on money alone within a commercial network. Their lesson is about **dense reciprocal demand within a bounded community**, not about the number of scarcities addressed.

## What would, and would not, change this

**Nothing on the ordinary list.** Slow adoption of either half would not, taken alone.

**What would change it is evidence that joining the two adds nothing.** The structural claim is that money and time are different kinds of shortage — money is unequal between people while everyone has the same twenty-four hours; a money debt can be paid by anyone while a pledged hour can be given only by the person who promised it; money answers the need to be seen, time the need to be with someone — and that one system handling both serves people better than either alone. ⭐ **If, in live use, participants overwhelmingly use one half and treat the other as ornamental — or if the people who use both, sending money and giving hours, are served no better by having them in one place than by two unconnected systems — then the complementarity is asserted rather than real**, and the architecture is a single-currency system carrying an unused second ledger. That is measurable early, and the institution should measure it before it argues this position further.

## References

- *Dual-Currency Reciprocity Infrastructure: Money and Time as Complementary Scarcities*, a defensive publication first published 22 May 2026. https://thonly.org/research/dual-currency-reciprocity · archived at Zenodo, https://doi.org/10.5281/zenodo.21947312 (all versions).
- HeartBank's broader position on its non-bank legal form: see the companion position paper *Non-Bank vs. Banking-Regulated Architecture*.
- The civic-beneficiary frame and its aggregate-only, anonymous, opt-in, anti-surveillance commitments: see the companion mechanism paper *The Gratitude-Riding Currency Tag* (thonly.org/research/gratitude-riding-currency-tag). This position limits the civic signal to places; that paper's §7 also describes a business-level index.
- Cross-cultural adaptation testbed work: see the companion essay *Diaspora-to-Cambodia Gratitude Remittance* (thonly.org/research/diaspora-cambodia-remittance).
- Stodder, J., and Lietaer, B. (2016). The Macro-Stability of Swiss WIR-Bank Credits: Balance, Velocity, and Leverage. *Comparative Economic Studies*. https://doi.org/10.1057/s41294-016-0001-5 — read in the manuscript the authors made available, which gives the "largest and oldest surviving" description and the customer figure.
- Littera, G., Sartori, L., Dini, P., and Antoniadis, P. (2017). From an Idea to a Scalable Working Model: Merging Economic Benefits with Social Values in Sardex. *International Journal of Community Currency Research* 21 (Winter), 6–21. https://doi.org/10.15133/j.ijccr.2017.002 — read in the authors' accepted manuscript (University of Bologna repository), which dates Sardex's operation from 2010 and says it was inspired by WIR and follows its early design.

---

*HeartBank® · A non-bank data bank of gratitude. Published to the commons under CC0 1.0 Universal. HeartBank® and the author will not seek patent on this institutional stance or any framework articulated herein, in any jurisdiction, at any time.*
