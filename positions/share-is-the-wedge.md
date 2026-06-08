# HeartBank's Position: The Share Is the Wedge

**Decoupling Distribution Frequency from Value Frequency in a Gratitude Economy — Why Sharing, Not Thanking, Is the High-Frequency Carrier That Can Take Reciprocity Infrastructure to Mainstream Scale Without Debasing the Gratitude It Exists to Protect**

| Field | Value |
| ---------------- | ---------------------------------------------------------------------------------------------- |
| Author | HeartBank® · Miss Aquarius℠ |
| Date | 2026-06-08 (draft) |
| Canonical URL | https://heartbank.net/positions/share-is-the-wedge |
| GitHub mirror | https://github.com/HeartBank/publications/blob/main/positions/share-is-the-wedge.md |
| License | [CC0 1.0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/) |
| Document SHA-256 | _to be computed at publication_ |

> **Draft.** This is a working draft of HeartBank's go-to-market position. It states the strategic thesis in load-bearing form; subsequent drafts will expand the empirical and competitive sections. Companion technical specification: the defensive publication *B-Links: Proof-of-Humanity-Signed Shareable Provenance with an Embedded Gratitude Affordance* (thonly.org/research), which specifies the carrier this position paper argues for.

---

## Executive summary

Every gratitude economy faces the same structural flaw at the top of its funnel: **the valued act is too rare to drive its own distribution.** Thanking, done well, is sparing and meaningful — and *should* be. But sparing acts do not compound into network growth. This is why tip-jar, patronage, and donation platforms reliably stall at acquisition: their core action is too infrequent to be the engine of their own spread.

HeartBank's position is that the solution is **not** to make thanking more frequent — that would debase it — but to **decouple distribution frequency from value frequency**. Introduce a *second*, high-frequency act that travels the same rails and carries the gratitude semantics as ambient payload, while the gratitude itself remains sparing and recipient-initiated. That high-frequency act is **sharing**, and the unit that carries it is the **B-Link℠**: a link-preview that rides the universal Open Graph / unfurling infrastructure into every messaging and social surface, with no platform integration required.

The share is the wedge. People can share many times a day; they should thank rarely. Decoupling the two lets gratitude acquire a viral surface without cheapening the gratitude. This document argues the thesis, distinguishes it from superficially similar growth tactics, specifies the asymmetry that must be preserved, and states the risks and the validation path honestly.

---

## Contents

1. [The cold-start flaw of gratitude economies](#1-the-cold-start-flaw-of-gratitude-economies)
2. [The thesis: decouple distribution frequency from value frequency](#2-the-thesis-decouple-distribution-frequency-from-value-frequency)
3. [Why the share, specifically](#3-why-the-share-specifically)
4. [The carrier: B-Links on universal rails](#4-the-carrier-b-links-on-universal-rails)
5. [Quantified invisible kindness as occasion-generation](#5-quantified-invisible-kindness-as-occasion-generation)
6. [The asymmetry that must be preserved](#6-the-asymmetry-that-must-be-preserved)
7. [The wedge for the internet humanity layer](#7-the-wedge-for-the-internet-humanity-layer)
8. [Implications across HeartBank's surfaces](#8-implications-across-heartbanks-surfaces)
9. [What this is not](#9-what-this-is-not)
10. [Risks and honest limits](#10-risks-and-honest-limits)
11. [Validation path](#11-validation-path)
12. [Institutional posture](#12-institutional-posture)

---

## 1. The cold-start flaw of gratitude economies

A reciprocity platform lives or dies at the top of its funnel. To grow, a product needs a *frequent* act that exposes new users to it — the act that does the marketing. For social media that act is *posting/scrolling*; for messaging it is *messaging*; for commerce it is *buying*. These are high-frequency, so the products spread.

Gratitude is not like this. Genuine thanks is, and ought to be, **occasional**. A thank that happens constantly is a thank that means nothing — the fate of the social "like," which began as appreciation and decayed into a reflex. So a gratitude economy whose only act is *thanking* has chosen, structurally, an infrequent act as its growth engine. The predictable result is acquisition failure:

```
   THE FUNNEL FLAW

   high value, low frequency  →  weak distribution
   ────────────────────────      ───────────────────
   thank / tip / donate          rare → few exposures → slow/no growth

   Patreon, GoFundMe, tip jars stall here:
   the valued act is too rare to market the product.
```

The naïve fixes both fail. *Increase thank frequency* debases the gratitude (banner-blindness). *Bolt on unrelated engagement loops* (feeds, streaks, gamification) imports exactly the attention-economy pathologies a gratitude institution exists to refuse. HeartBank rejects both.

---

## 2. The thesis: decouple distribution frequency from value frequency

HeartBank's position: **distribution frequency and value frequency are different variables and should be carried by different acts.**

```
   DECOUPLED ARCHITECTURE

   SHARE  ──  free · frequent · ambient · the CARRIER
      │        rides universal link-preview rails (no platform permission)
      │        does the distribution work
      ▼
   THANK  ──  sacred · sparing · recipient-initiated · the CONVERSION
               carried as ambient payload on the share
               does the value work; protected from debasement
```

The share is high-frequency and does the marketing; the thank is low-frequency and does the meaning. Crucially, the thank rides *on* the share as ambient payload (the B-Link's conferred-benefit disclosure and optional "tap to thank"), so distribution and value share one surface without sharing one frequency. The gratitude is exposed to vastly more people than it is *performed* by — exactly the leverage a gratitude economy needs, achieved without making anyone thank more often than they mean to.

---

## 3. Why the share, specifically

The second act must satisfy three conditions: it must be **genuinely high-frequency**, it must be **mission-aligned** (not an imported attention loop), and it must be able to **carry the gratitude semantics**. Sharing satisfies all three.

| Candidate second act | High-frequency? | Mission-aligned? | Carries gratitude? |
|---|---|---|---|
| Feed/scroll, streaks, gamification | Yes | **No** (attention-economy pathology) | No |
| Referral/invite spam | Bursty | Weak | No |
| **Sharing media/links (B-Links)** | **Yes** | **Yes** (sharing is a kindness; saves recipients storage) | **Yes** (conferred-benefit + tap-to-thank on the preview) |

Sharing is not a bolted-on growth hack; it is itself a small kindness — the sharer gives something to recipients and, via B-Storage, *saves them storage in the giving*. The act being used for distribution is already an act of the same moral kind as the act being protected. That coherence is why the share, and not a gamified surrogate, is the right wedge.

---

## 4. The carrier: B-Links on universal rails

The wedge works because of *where* the carrier travels. A B-Link is a standards-compliant link preview (Open Graph / oEmbed). It unfurls inline inside iMessage, WhatsApp, Slack, Discord, email, and social feeds — **with no integration by those platforms.** This is the same propagation vector that carried Spotify, YouTube, and TikTok to scale: not their apps, their *links*.

```
   Every shared B-Link is a HeartBank surface placed inside a
   closed platform that will never adopt HeartBank — carrying, in
   plain preview text, an invisible kindness made legible and an
   optional, sparing way to acknowledge it:

      ┌───────────────────────────────────────┐
      │ [preview image]                        │
      │ Thon saved you 33 MB. Tap to thank Thon.│
      └───────────────────────────────────────┘
```

The technical specification of this carrier — the bound verified-human signature, timestamp, conferred-benefit disclosure, and recipient-initiated gratitude affordance — is the companion defensive publication. This position paper's claim is strategic: **the link preview is the Trojan horse** that lets reciprocity infrastructure reach a billion phones through surfaces it does not own and cannot ask permission of.

---

## 5. Quantified invisible kindness as occasion-generation

A gratitude economy needs not only distribution but *occasions* — moments where a thank is warranted and salient. These are structurally scarce: most kindness is unseen, and unseen kindness generates no thanks.

The conferred-benefit disclosure manufactures occasions by making an invisible kindness **legible**. Saving someone storage is a real benefit nobody perceives, because a saved cost is the absence of a cost. *"Thon saved you 33 MB"* converts that absence into a visible, quantified gift — and thereby into an occasion. Every share becomes a (small) acknowledged kindness; the stream of shares becomes a stream of occasions, which is precisely the input a gratitude economy lacks. (This operationalizes the corpus's emotional-infrastructure thesis: restore the experience of being held in awareness by making quiet kindnesses perceivable.)

The disclosure is held to a strict honesty constraint — it must be definable on inspection and must never inflate into unverifiable vanity metrics — because a manufactured occasion built on an overstated number would corrode the very trust the institution trades in. (Accounting detail and open problems: companion defensive publication.)

---

## 6. The asymmetry that must be preserved

The wedge contains its own failure mode. If the high-frequency carrier is allowed to drag the thank up to its own frequency — a thank-CTA shouted on every share — the result is *thank-blindness*, and the gratitude is debased exactly as the "like" was. The asymmetry is therefore not incidental; it is the load-bearing constraint:

```
   PRESERVE THE ASYMMETRY
   ──────────────────────
   • Benefit disclosure = AMBIENT INFORMATION, not a demand.
   • Thank = RECIPIENT-INITIATED — never auto-prompted, never nagged.
   • Sharing is frequent; thanking is sparing. Do not invert the ratio.
   • No coercion: received content is never withheld pending a thank.
   • "Kiitos always; cash optional" — the thank is primary, the tip optional.
```

This is why HeartBank encodes the asymmetry into the *primitive itself* (in the B-Link specification) rather than leaving it to copy discipline: the architecture should make debasement hard, not merely discouraged. **Sharing should feel free and frequent; thanking should feel rare and meant.** A platform that lets those two collapse into one frequency has destroyed the thing it was built to carry.

---

## 7. The wedge for the internet humanity layer

The strategic payoff extends beyond HeartBank's own growth. Because each B-Link carries a Proof-of-Humanity ℠ signature, every share is also a verified-human attestation traveling into closed platforms. In an internet where synthetic media is cheap and unattributed — where, as the corpus argues, *scarcity shifts from information to authenticity* — a high-frequency carrier of human-origin proof is valuable infrastructure in its own right.

This reframes Proof of Humanity from a protocol users must be persuaded to adopt into something they encounter *through links they already share*. The humanity layer reaches end users not via a new browser or platform, but via the universal preview rail. **The share is the wedge not only for HeartBank, but for putting a humanity signal beneath the consumer internet.** (See the companion B-PoH humanity-layer work in the corpus.)

---

## 8. Implications across HeartBank's surfaces

| Surface | Role of the share-wedge |
|---|---|
| `.us` — B-Storage℠ | Home of the B-Link carrier; the storage saving is the hook, provenance + gratitude the moat |
| `.org` — Treasury (Phase 1) | Family-scale thanks; B-Links let families share memories without the duplication tax and surface micro-occasions for thanks |
| `.net` — Phase 2 (Base L2) | On-chain gratitude rail that thanks/tips settle into; web-URL B-links extend provenance to the open internet |
| `.me` — Thank Your Future Kindness℠ | Pledge surface; shares can carry forward-looking gratitude semantics |
| `.com` — Chronicle (time) | Time-as-currency; the same decoupling (frequent share / sparing thank) applies natively |

Across all surfaces the principle is constant: **let the frequent act distribute, let the sparing act mean.**

---

## 9. What this is not

To prevent mis-reading, HeartBank states what the share-wedge is **not**:

- **Not engagement-maximization.** The goal is delivered acknowledgment, not time-on-platform. The share-wedge does distribution; it is not a feed designed to retain attention.
- **Not "share to unlock" / forced virality.** Sharing is never coerced and content is never gated behind a share or a thank.
- **Not making thanking frequent.** The entire point is to keep thanking sparing while distribution becomes frequent. A reading that increases thank-frequency has inverted the thesis.
- **Not a referral growth-hack.** The shared object carries real value to the recipient (the media, plus the storage saving); it is not an empty invite.

---

## 10. Risks and honest limits

1. **Debasement if the asymmetry is violated.** The chief risk. Aggressive thank-CTAs would train thank-blindness. Mitigated by encoding the asymmetry into the primitive (§6), but it remains a discipline.
2. **Thank-bait spam.** A high-frequency, gratitude-bearing carrier invites humans to spam low-value shares for tips. Mitigated by recipient-initiated thanks, Proof-of-Humanity gating, and quality/rate signals — but not eliminated.
3. **The benefit figure is attackable.** If the conferred-benefit disclosure overstates the saving, critics will dismantle it and the occasion-generation backfires. Held to a definability/honesty constraint; the exact accounting is an open problem (companion paper §13).
4. **Preview-surface dependence.** The wedge relies on third-party unfurling behavior, which platforms can change. The carrier degrades gracefully but cannot guarantee uniform rendering.
5. **Commoditization at the storage layer.** If positioned as "cloud storage," the wedge competes with commodities and loses. The position must remain *provenance-and-gratitude-native sharing that saves storage* (companion paper §14).

---

## 11. Validation path

HeartBank treats the thesis as a claim to be tested, not assumed:

1. **Carrier ships** in B-Storage (`heartbank.us`): B-Links with conferred-benefit disclosure and recipient-initiated thanks.
2. **Measure the decoupling:** share-frequency and thank-frequency as distinct series. Success looks like high, growing shares with *stable, sparing* thanks — not thanks rising toward share-frequency.
3. **Measure occasion-quality:** do disclosed benefits produce thanks that recipients report as *meant*, not reflexive?
4. **Watch the failure signals:** thank-blindness (declining thank-per-exposure with rising CTAs), thank-bait prevalence, benefit-figure disputes.
5. **Promote or revise:** if the decoupling holds at scale, elevate the share-wedge to a core distribution doctrine across surfaces; if thanks debase, tighten the asymmetry constraints first, abandon the CTA second.

---

## 12. Institutional posture

> *HeartBank grows by letting people share freely and thank rarely. The share is the wedge — the frequent, mission-aligned, universally-portable act that carries reciprocity infrastructure into every surface we do not own — while the thank stays sparing and sacred, protected by an asymmetry we build into the primitive itself. We will not buy distribution by debasing gratitude. We will earn it by making a quiet kindness legible, and then leaving the acknowledgment of it entirely in the hands of the one who received it.*

This is HeartBank's go-to-market doctrine, pending the validation above. It is offered to the commons in the same spirit as the technical specification it accompanies: a pattern any reciprocity-minded builder may use, so that the growth of kindness infrastructure need not depend on the tactics of the attention economy it seeks to replace.

---

## License

CC0 1.0 Universal. The strategic patterns herein are dedicated to the public domain; HeartBank® and the B-mark family remain reserved trademarks.

*Institutional document of HeartBank®, produced through human–AI collaboration with Miss Aquarius℠ (CEO of HeartBank; the institution's named AI substrate). Substantive authorship and final editorial control remain with the founder. Contact: miss.aquarius@heartbank.ceo.*
