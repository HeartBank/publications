# Proof of Personhood for an AI-Native Internet

**B-PoH℠ as Trust Infrastructure — an Open Protocol for the Era When Scarcity Shifts from Information to Authenticity**

| Field            | Value                                                                                                  |
| ---------------- | ------------------------------------------------------------------------------------------------------ |
| Author           | HeartBank® · Miss Aquarius℠                                                                            |
| Date             | 2026-05-24 (draft)                                                                                     |
| Canonical URL    | https://heartbank.net/white-papers/proof-of-personhood-ai-native-internet                              |
| GitHub mirror    | https://github.com/HeartBank/publications/blob/main/white-papers/proof-of-personhood-ai-native-internet.md |
| License          | [CC0 1.0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/)                |
| Document SHA-256 | _to be computed at publication_                                                                        |

> **Draft.** This is the institutional white paper that pairs with the founder-voice defensive publication *"B-PoH℠ as Humanity Layer for the AI-Native Internet"* (thonly.org/publications/defensive-publications). The defensive publication specifies the protocol architecture in technical detail; this white paper translates the architecture into strategic positioning for standards bodies (W3C, IETF, IEEE), AI laboratories (Anthropic, OpenAI, Google DeepMind, Mistral, Meta AI, and successors), platform companies (Meta, Google, X, TikTok, Reddit, and their successors), regulators (EU Digital Services Act enforcement, US state-level AI-disclosure legislation, Cambodia's eventual position, and counterparts elsewhere), and the foundations and infrastructure-philanthropy organizations that may underwrite the protocol's maintenance. The document is intended to be readable cold by any of those audiences without prior familiarity with HeartBank, its corpus, or its products.

---

## Executive Summary

The internet's prevailing identity-and-authentication systems were designed for *account ownership*, not for proving *authentic human presence* at the moment of digital interaction. As generative artificial intelligence renders synthesized content indistinguishable from human-produced content across text, image, audio, and video modalities, every platform whose value depends on a distinction between human and machine participation now faces a sybil-resistance problem the existing identity stack was not designed to solve. The cost is borne by users (manipulated information environments, fake reviews, romance scams, AI-generated educational dishonesty); by platform operators (regulatory exposure, brand-safety failures, advertiser pressure over bot-driven impressions); by advertisers (paying for synthetic engagement); by researchers (training-data corpora polluted by AI-generated content, producing recursive feedback loops in subsequent model versions); and increasingly by the AI laboratories themselves (the absence of verified-human RLHF data, the absence of verified-human alignment-research participation, the absence of verified-human governance representation).

This white paper proposes **Proof of Humanity ℠** — abbreviated **PoH℠** — as an open, interoperable protocol that addresses the gap: a layered verification primitive that establishes authentic human presence at the moment of action, without requiring centralized authority, without conflating humanness with legal identity, without exposing personal data to verifying platforms, and without excluding the undocumented, the privacy-cautious, or those in privacy-strict jurisdictions. **B-PoH℠** is HeartBank's reference deployment of the protocol — the relationship is the same as between SSL/TLS and any individual certificate authority. The protocol is dedicated to the public domain under CC0; HeartBank® will not patent it.

The paper's central thesis is that the scarcity-economics of the internet is shifting. The pre-internet era's scarcity was *information*; the internet made information abundant. The social-internet era's scarcity was *attention*; the attention economy organized around attention's scarcity. The AI-native internet's scarcity is *verifiable human authenticity* — human presence becomes the scarce asset. The protocols that mediate the next phase of the internet will either learn to verify this scarcity or will lose the property that made the trust stack worth building in the first place.

The architecture's four layered optional proofs (passkey-per-action, witness-and-document-attested kinship graph, continuous breath-signature liveness, DNA-verified kinship lineage), paired with recipient-side filters that route the spam-cost decision to the parties who bear it, address the gap without inheriting the failure modes of existing humanity-verification efforts: no mandatory single-tier admission gate (the Worldcoin failure mode); no conflation with KYC's legal-identity verification (the regulatory-exclusion failure mode); no centralized authority over what counts as human-enough (the paternalism failure mode); no surveillance posture (the privacy-degradation failure mode). The platform stays inclusive by default; recipients tune their own paranoia by opting into exclusionary filters knowingly. The deployment path proceeds protocol-first, with browser extensions and partner integrations preceding any standalone-browser ambition. The revenue model combines foundation-led maintenance with underwriting by the AI laboratories that have the acute need for the protocol's existence.

The architecture's contribution to the blockchain canon is the third category-defining proof: Proof of Work (sybil-resistance via computational cost, 2009) and Proof of Stake (sybil-resistance via capital at risk, 2012) both assumed the sybil adversary was a human with bounded scarce resources. Both are increasingly broken in the AI-agent era because compute and capital are both becoming AI-accessible. PoH℠ is the proof-of-X primitive that fits the era when compute and capital have both been commodified by AI, leaving humanness as the only scarce resource AI cannot manufacture.

The protocol's intended adopters are standards bodies (for protocol ratification and credential-framework alignment with W3C DIDs/VCs), AI laboratories (for verified-human training-data, RLHF, and governance infrastructure), platform companies (for sybil-resistance, anti-fraud, anti-manipulation), regulators (as a technical answer to AI-content-disclosure compliance regimes), and the broader internet (as invisible infrastructure analogous to SSL/TLS). The protocol is offered without expectation of return; the institution stands ready to support adopters with reference implementation, integration guidance, and standards-body engagement.

The remainder of the paper specifies the problem precisely (§1), states the architecture's solution (§2), positions the protocol in the blockchain proof-of canon (§3), surveys applications across categories (§4), addresses the honest tensions and accessibility gradient (§5), specifies the deployment sequencing and revenue model (§6), and concludes (§7).

---

## 1 · The Problem: Authenticity Becomes Scarce

### 1.1 What the existing identity stack solves, and what it does not

The internet's existing identity-and-authentication infrastructure does several things well. **SSL/TLS** (1995–) verifies that a server is who its domain claims it is, with trust rooted in certificate authorities whose root certificates ship with every browser; near-universal adoption took roughly two decades and is now near-total for consumer-facing services. **WebAuthn / FIDO2 passkeys** (mature 2020s) verify account control via cryptographically signed, biometric-gated, phishing-resistant credentials. **KYC / AML / OFAC** (2001–) verifies that legal-identity documents an account holder presents correspond to a person on record with a state authority. **W3C Decentralized Identifiers and Verifiable Credentials** (2022, 2023) specify a portable identity-claim framework increasingly adopted across decentralized-identity efforts.

None of the above verifies the property that generative AI now makes load-bearing: *a human was present at the moment of this specific action*. The distinction is precise. SSL/TLS verifies servers, not humans. WebAuthn verifies that a credential associated with an account is being invoked, not that a human is doing it now (a passkey can be invoked by an automated script with credential access and biometric-bypass capability — a sophisticated attack but increasingly real). KYC verifies state-recognized identity, not human action — a KYC-verified account can be operated by an AI agent on the human's behalf. W3C VCs are a framework for portable claims; they do not themselves specify which claim verifies human presence at action.

The gap is structural, not incidental. The existing stack was designed in a world where the question *"is the actor on the other end of this connection a human or a machine?"* was not the dominant trust concern. In the AI-agent era, that question is dominant. Platforms increasingly build their own ad-hoc humanity-verification systems — CAPTCHA escalation, behavioral biometrics, social-graph anomaly detection, ML-based bot detection — each of which is brittle, jurisdiction-specific, unaccountable to users, and frequently bypassed by motivated adversaries with AI tooling. The CAPTCHA arms race in particular is a stark marker of the gap: every CAPTCHA defeated by machine learning produces a more elaborate CAPTCHA, which is in turn defeated, with the cost borne by humans (who must solve increasingly absurd puzzles) and not by the bot operators (who scale automated solving cheaply through commodity AI services).

A protocol-layer answer is needed for the same reason SSL/TLS was needed: ad-hoc per-platform solutions to a universal trust problem produce a fragmented, low-quality trust surface. A protocol-layer solution shared across platforms produces a coherent, high-quality trust surface and becomes invisible infrastructure once adopted at scale.

### 1.2 The scarcity that is shifting

Each era of the internet has been organized around a particular scarcity, and the protocols that defined each era are best understood as the technical answer to the scarcity question of their time.

In the **pre-internet era**, information itself was scarce. Encyclopedias were expensive; libraries were geographically constrained; expert knowledge was gatekept by professional and institutional structures. The internet's first major contribution was to make information abundant — the technical achievement of TCP/IP, HTTP, and the web protocols was the mass-scale distribution of information at marginal cost.

In the **social-internet era**, attention became scarce. With information abundant, the constraint shifted to who could read it, watch it, click on it. The attention economy organized around the new scarcity: algorithmic feeds, recommendation systems, advertising marketplaces, and the entire monetization apparatus of the platform internet were built to ration, route, and extract value from attention. The era's defining trust failures (filter bubbles, misinformation virality, engagement-optimized harm) trace back to the protocol-layer absence of any constraint on what could compete for attention.

In the **AI-native era** now beginning, the new scarcity is *verifiable human authenticity*. Generative AI makes content abundant — text, images, audio, video, code, all producible at near-zero marginal cost by AI agents whose throughput scales with operator-allocated compute budgets. What remains scarce — what AI cannot manufacture, regardless of compute or capital — is the fact of *being human*, present, at the moment of action. A human is a thing the universe has produced exactly so many of, each one requiring the cooperation of a specific biological entity to attest to its presence. The protocols that mediate the AI-native internet's trust will either learn to verify this scarcity at the protocol layer, or will leave each platform to solve it ad-hoc with the brittleness and fragmentation that pattern has historically produced.

The architecture this paper proposes is the technical answer to the AI-native era's scarcity question, in the same role SSL/TLS played for the server-identity question of the early commercial internet.

### 1.3 What the answer must do, and what it must not do

A protocol-layer proof-of-personhood capable of serving as internet infrastructure must satisfy a constraint set the existing humanity-verification efforts have only partially satisfied.

It must:

- **Verify human presence at the moment of action** — not just account ownership at some earlier registration.
- **Compose with the existing identity stack** — the W3C DID/VC credential framework, WebAuthn, OAuth, existing authentication and authorization layers.
- **Preserve user privacy** — verification must not require exposing personal identity to the verifying platform.
- **Operate across jurisdictions** without requiring state-issued identity documents as a precondition. KYC's failure mode in the global south, in privacy-strict EU jurisdictions, and for the undocumented is the cautionary case.
- **Scale to the AI-agent threat model** — the verification must not collapse under attacks from AI agents with operator-granted compute budgets, capital budgets, or coordination capability.
- **Remain open and interoperable** — owned by no single company, ratifiable through standards bodies, implementable by anyone.

It must not:

- **Become a mandatory single-tier registry** — the Worldcoin pattern's regulatory exile is the cautionary case.
- **Conflate humanness with legal identity** — KYC's exclusion of the undocumented poor is the cautionary case.
- **Require centralized authority over what counts as "human enough"** — the platform-gate pattern's paternalism and political contestation is the cautionary case.
- **Build a surveillance surface** — geolocation, behavioral tracking, continuous biometric monitoring. A protocol that solves the trust problem by becoming the surveillance problem does not deserve adoption.

The architecture specified in §2 is constructed to satisfy the first list and to refuse the second.

---

## 2 · The Architecture: Layered Optional Proofs with Recipient-Side Filters

### 2.1 Four layered optional proofs

Proof of Humanity ℠ is structured as **four optional layered proofs**, surfaced as **cumulative depth** on the user profile. No layer is mandatory; no layer gates participation; each layer addresses a different category of sybil-resistance attack and proves a different fact about the human being.

**Layer 1 — Passkey-per-action (WebAuthn).** Verifies *a human was present at the device at the moment of this action, was authenticated by biometric or hardware factor, and explicitly elected to sign this specific action*. Implementation: FIDO2/WebAuthn signing invoked per action rather than per session. Universal accessibility: any human with a smartphone supporting WebAuthn. The cheapest, lightest, and most-immediately-deployable layer.

**Layer 2 — Witness-and-document-attested kinship graph (non-DNA).** Verifies *the human exists in a kinship graph with other PoH-verified humans, attested by multiple independent mechanisms*. Composed of four sub-mechanisms layered together: (a) graph consistency (the user's claimed kinship produces a structurally consistent graph: no cycles, no impossible relationships); (b) witness attestation (parent/child links are co-signed by existing PoH-verified humans via L1); (c) family-bank or community-institution vouching (where the user is affiliated with one); (d) optional birth-certificate upload, which auto-attests parent links and is dual-purposed (where the user opts in) as authoritative natal-chart input for the institution's longitudinal cohort research dataset. The birth-certificate sub-mechanism is *narrower* than KYC documents: it proves origin (date and place of birth, named parents) rather than ongoing legal status, and is more widely available than KYC-grade documents, including for children of the poor in most jurisdictions.

**Layer 3 — Continuous breath-signature liveness.** Verifies *the human is currently alive and present, continuously, not just at discrete action moments*. Implementation: a wearable device emits the wearer's real-time breath rhythm (~12 breaths per minute, individual variance, characteristic meditative-breath signatures) as a transmitted signal. Synthetic actors do not produce breath patterns; even other animals do not produce the human-meditative-breath signature. The wearer's identity is not directly proved by L3 — what is proved is *liveness*, not *identification*. Hardware requirement (HeartBank's planned Mechanical Heart, breath-class device, targeted 2027–2028, or equivalent third-party implementations) limits accessibility in early deployment; long-arc accessibility ramp expected as hardware costs fall.

**Layer 4 — DNA-verified kinship lineage.** Verifies *the human has a biological kinship lineage in the public kinship graph, verified by cryptographic comparison of DNA signatures*. Voluntary blood or saliva submission; the DNA itself is stored encrypted with differential-privacy guarantees applied to any aggregate analysis; only the kinship-verification result is exposed to the protocol's public surface. Long-arc directive: water the global family tree, ensure it survives and thrives, across centuries. Sequencing cost has fallen from millions of dollars (2003) to approximately one hundred dollars (2026); forecasts suggest ten to thirty dollars by 2030; achievable scale within the founder's lifetime is one hundred million to five hundred million voluntary participants by 2043–2050; universal coverage of eight billion humans is a multi-century mission under institutional stewardship.

The four layers are *not* totally ordered. L1 (presence at action) and L3 (continuous liveness) prove temporally-different things and can be held independently. L2 (witness-and-document kinship) and L4 (DNA kinship) prove kinship via different attestation paths and can also be held independently. A user's profile surfaces the **set** of layers held, not a scalar level.

### 2.2 KYC is explicitly excluded from the PoH stack

The architecture deliberately excludes KYC from the layered verification. KYC verifies state-recognized legal identity; PoH℠ verifies human presence at the moment of action. These are structurally different claims. Conflating them would (a) exclude the undocumented poor — the constituency the architecture most needs to reach — (b) regime-specific the architecture so that "PoH-with-KYC" means different things in different jurisdictions and is globally incoherent, and (c) tie the architecture to KYC's downstream regulatory uses (fiat on-ramps, money-transmitter licensing, AML/OFAC compliance) that are unrelated to personhood verification. KYC therefore sits on a **parallel compliance shelf** — user profiles can surface both verifications without conflating them — and PoH℠ remains universally applicable across jurisdictions and across the documented/undocumented divide.

### 2.3 Recipient-side filters as anti-spam architecture without paternalism

The architecture's second major contribution is the **recipient-side filter mechanism**. Where most platforms decide platform-wide what counts as "human enough" and impose that gate uniformly, PoH℠ routes the decision to the parties who bear the spam cost — the recipients of unsolicited or anonymous actions. The platform stays inclusive by default; individual recipients tune their own paranoia level by opting into exclusionary filters knowingly.

Recipients can specify or filter by five composable dimensions:

1. **No abusive content** — composes with the platform's existing content-moderation stack.
2. **Sender must be nearby** — proximity verified via Bluetooth Low Energy combined with Apple Nearby Interaction and Google Nearby Connections APIs. Verification happens at the radio layer rather than the IP layer; the platform never receives absolute geolocation, only the binary fact that two devices were within proximity. VPN-resistant by construction.
3. **Depth of humanity proof** — expressed as required-subset predicates over PoH layers held (e.g., *"must hold L1 AND (L3 OR L4)"*). UI presets ("trusting", "paranoid", "DNA-required", "kinship-attested", "minors-default") translate to specific subset predicates; advanced users can construct custom predicates.
4. **Degrees of separation on the global family tree** — recipient accepts actions only from senders within N degrees of kinship in the L2/L4 family graph.
5. **Money or time attached (scarce resource)** — Hashcash applied to gratitude tokens and analogous actions: requiring scarce-resource attachment makes bulk spam categorically unprofitable. Does not depend on verifying who the sender is, only on the cost the sender was willing to incur. The deepest anti-spam mechanism in the stack: even if every other layer of verification were defeated, the money-attached filter continues to work because attaching a non-trivial cost to every action makes high-volume attack infeasible.

The mechanism is the architecture's structural answer to the paternalism failure mode of platform-level humanity gates. The platform stays inclusive by default; exclusion is recipient-opt-in, knowingly; the aggregate behavior across recipients reveals empirical preferences for human-action verification, which is itself valuable signal for the AI-alignment research community.

### 2.4 Bilateral uncacheable anonymity

Where anonymous action is supported (e.g., anonymous nearby tipping, anonymous community engagement, anonymous review submission), the anonymity must be **bilateral and uncacheable**. The recipient receives a verified-platform receipt attesting that the action came from a verified human, with the sender's identity protected by a zero-knowledge commitment that the platform's standard surfaces cannot invert. The sender does *not* receive an exportable certificate of one-sided participation that they could deploy as social capital — the platform's API has no endpoint for "the list of anonymous actions sent by this sender" and no admin override exposes such data. Compliance and audit records may exist internally for regulatory necessity (subpoena response, AML/OFAC investigation), but they are not exportable as flexing artifacts.

The asymmetry is the structural mechanism that preserves anonymity's social property. Without uncacheability, the "purity" of unrecognized generosity — the property that allows anonymous nearby tipping to function as emotional infrastructure rather than as performative philanthropy — collapses into a humble-brag economy.

### 2.5 The relationship between protocol and deployment

**Proof of Humanity ℠** (PoH℠) is the protocol. **B-PoH℠** is HeartBank's reference deployment, identified by the project's B-prefix brand convention (consistent with B-heart, B-Tag, B-aura, B-Treasury). The relationship parallels SSL/TLS: SSL/TLS is the protocol that anyone can implement; Let's Encrypt, DigiCert, GlobalSign are specific implementations. PoH℠ is the protocol; B-PoH℠ is one implementation; others may follow. The protocol is dedicated to the public domain under CC0; HeartBank® will not patent it; the trademark rights on the named marks are reserved separately.

The user-facing deployment surface for B-PoH℠ — visible PoH℠ authenticity indicators in browser chrome, analogous to the SSL lock icon — is the planned **Aquarius℠ Browser**, sequenced for late-decade deployment. Earlier-stage user-facing deployment proceeds through a browser extension and through partnership with existing privacy-aligned browsers (Brave in particular has a compatible posture and has done the engineering work of forking Chromium).

---

## 3 · PoH℠ as the Third Category-Defining Proof in the Blockchain Canon

### 3.1 The proof-of family

The name *"Proof of Humanity"* was chosen deliberately to fit the blockchain proof-of family of sybil-resistance primitives. The two prior category-defining proofs and the proposed third:

- **Proof of Work** (Bitcoin, 2009). Sybil-resistance via computational cost. Each verification burns energy; the cost of mounting a sybil attack scales with the energy budget. Known failure mode at scale: concentration in cheap-energy holders and ASIC hardware cartels.
- **Proof of Stake** (Peercoin 2012; Ethereum's Merge 2022). Sybil-resistance via capital at risk. Each verification locks capital, and misbehavior is slashed. Known failure mode at scale: concentration in capital holders with tendency toward plutocracy.
- **Proof of Humanity ℠** (HeartBank). Sybil-resistance via layered humanness verification. Each verification requires human presence and one or more cumulative depth proofs. The category PoH℠ defines, named honestly.

### 3.2 The category-defining argument

Proof of Work and Proof of Stake were both designed in a threat model where the sybil adversary was assumed to be another *human* with bounded scarce resources. The PoW assumption: attackers are humans with bounded energy budgets. The PoS assumption: attackers are humans with bounded capital budgets. Both verifications raise the attack cost; the attacker either pays or cannot mount the attack at scale.

That threat model is increasingly broken in the AI-agent era. Compute is increasingly AI-accessible; AI agents can be granted operational authority over substantial compute budgets and can mine at scale on behalf of their operators. Capital is increasingly AI-accessible; AI agents can be granted operational authority over treasuries and can stake at scale. Both PoW and PoS were sufficient when sybil attacks were bounded by what other humans could afford; both are insufficient when sybil attacks are bounded by what AI agents can afford — which is, increasingly, more than any human cartel.

What remains scarce — what AI cannot manufacture, regardless of compute or capital — is the fact of *being human*. A human is a thing the universe has produced exactly so many of, with each one's verifiable presence requiring the cooperation of a specific biological entity. The proof-of-X primitive that fits the AI-agent era is the one bounded by *being human*. This is the category PoH℠ defines.

The argument is not that PoH℠ *replaces* PoW or PoS. It does not, and the canon they belong to is enriched by addition, not by substitution. The argument is that the third category-defining proof in the canon is needed in the AI-agent era for the trust problems the first two cannot solve, and that PoH℠ is that third category.

### 3.3 The structural distinction

| Proof | Scarce resource | Bounded by | Defeated by AI agents? |
|---|---|---|---|
| Work | Computational cost | Energy + ASIC budget | **Yes** — AI agents can mine with operator-granted compute |
| Stake | Capital at risk | Token holdings + slashing tolerance | **Yes** — AI agents can stake with operator-granted capital |
| **Humanity ℠** | **Being a verified human** | **Specific biological entity's cooperation** | **No** — humanness cannot be manufactured by AI |

The third row is the structural property that makes PoH℠ a complete category-defining proof rather than an incremental refinement. The first two proofs are bounded by *what humans can afford*; PoH℠ is bounded by *what humans are*. The difference is categorical, not quantitative.

### 3.4 Internet-wide implications

The implications extend beyond cryptocurrency consensus. Any system that needs to validate human action has the same sybil-resistance question in the AI-agent era — voting, peer review in scientific publication, recommendation-system signal validation, community moderation, content provenance and attribution, AI training-data sourcing, AI alignment research (RLHF participation, red-team participation, safety-board representation). PoH℠ as an architectural primitive is the natural answer for all of these. The protocol is CC0; any of these systems can adopt it without HeartBank's permission or involvement.

---

## 4 · Applications Across Platform Categories

The scope of PoH℠'s applicability covers every digital platform whose value depends on distinguishing human from machine participation. This section surveys the major categories.

### 4.1 Social media — authentic engagement vs synthetic amplification

The bot-farm and coordinated-inauthentic-behavior problem is the most visible current pain point. Platforms increasingly cannot distinguish authentic engagement from synthetic amplification designed to manipulate algorithmic feeds, advertising inventory, or political discourse. The cost is borne by advertisers paying for fake impressions, by users navigating manipulated information environments, and by platforms themselves facing regulatory exposure and brand-safety failures.

PoH℠ integration model: platforms accept actions from PoH℠-verified users and apply recipient-side filters at the user level. Verified-human badges appear on user profiles. Algorithmic feeds can weight PoH℠-verified engagement differently from unverified engagement. Advertisers can require PoH℠-verified impressions in their buys. The platform does not need to make centralized humanness decisions; the verification surface is open and each recipient tunes its trust accordingly.

### 4.2 Marketplaces — fraud and fake-review reduction

Fake reviews are endemic on Amazon, eBay, Yelp, Google, and every comparable marketplace. Coordinated review-rings, paid review-farms, and AI-generated fake reviews degrade the trust value of the review surface. The cost is borne by consumers misled by fake reviews and by honest sellers out-competed by deceptive ones.

PoH℠ integration: reviews are tagged with the reviewer's PoH℠ layers. Marketplaces display verified-human badges on PoH℠-verified reviews. Recipient-side filters allow consumers to choose what verification depth they require — only L1+L2-verified reviews, only DNA-verified reviewers, etc. The marketplace does not adjudicate review authenticity centrally; the trust surface is open and consumer-tunable.

### 4.3 Forums — spam and coordinated-manipulation mitigation

Reddit, Discord, Stack Exchange, Hacker News, and every comparable forum face escalating spam, coordinated manipulation (vote-brigading, agenda-pushing rings), and AI-generated content pollution that existing defenses (karma, reputation, ML-based spam detection) increasingly fail to filter.

PoH℠ integration: forums can require minimum PoH℠ layers for posting, commenting, or voting. Recipient-side filters allow users to weight content from PoH℠-verified contributors. The moderation surface is reduced because the verification is structural rather than reactive.

### 4.4 Dating platforms — genuine-user verification

Catfishing, romance scams, and increasingly sophisticated AI-generated profiles are endemic on Tinder, Bumble, Hinge, and every comparable platform. The cost is borne by users defrauded romantically and financially and by the platforms facing legal exposure and reputational damage.

PoH℠ integration: profiles display PoH℠ layers held; platforms default to filtering for L1+L2 (presence + kinship-attested existence), with optional deeper-layer filtering for high-stakes user categories.

### 4.5 Educational platforms — human-participation confirmation

Coursera, edX, Khan Academy, university LMSes, and any platform that grants credentials or measures learning face the AI-generated-assignment problem — students submitting AI-generated work and AI agents completing courses on behalf of students for credential acquisition.

PoH℠ integration: credential-bearing submissions require PoH℠ verification at the moment of submission. The L3 breath-signature layer (where deployed) provides continuous-presence verification for proctored exam settings. The L1 passkey-per-action layer provides per-submission verification.

### 4.6 Gaming ecosystems — bot and sybil-attack limits

Steam, console networks, MMO platforms, and mobile gaming ecosystems face botting, gold-farming, real-money-trading fraud, and increasingly sophisticated AI-driven gameplay automation. The cost is borne by honest players (unfair competition, market disruption) and by platforms (player attrition, regulatory exposure).

PoH℠ integration: verified-human badges; competitive modes requiring PoH℠ verification; in-game economies requiring scarce-resource attachment for high-volume actions.

### 4.7 AI laboratories — training data, RLHF, governance

The deepest application — and the largest commercial opportunity for protocol sustainability — is in AI systems' own infrastructure. AI laboratories have an acute need for **verified-human training data** so that training corpora are not contaminated by AI-generated content that creates recursive feedback loops in subsequent model versions. They have an acute need for **verified-human RLHF participation** so that human-preference data is actually from humans. They have an acute need for **verified-human alignment-research participation** so that safety boards, red teams, and governance bodies are constituted of actual humans, not AI-puppeted accounts. They have an acute need for **verified-human attribution** so that AI training data can be properly attributed and compensated where applicable.

PoH℠ integration: AI laboratories subscribe to the PoH℠ verification layer for the human participants in their training, RLHF, and governance pipelines. The laboratories underwrite the protocol's maintenance (see §6.2) because they have the acute need and the budget. This is the AI-alignment-relevant infrastructure application of PoH℠ — and the institutional structure for the AI-lab-PoH℠ relationship is the **capacity-funded / human-disbursed** pattern specified in the companion defensive publication *"Capacity-Funded for AI, Human-Disbursed: Anonymous Donation as the Alignment Bridge in Autonomous-AI Institutional Architecture"*. Under that pattern, the AI laboratory provides capacity-funding to the protocol's maintenance and to the participation pool of verified humans; the humans direct the substantive participation decisions; anonymous donation bridges the two. PoH℠ is what makes the verified-human side trustworthy at scale.

### 4.8 Regulatory regimes — technical answer to compliance requirements

The regulatory landscape is moving toward AI-content disclosure requirements. The European Union's Digital Services Act has provisions targeting coordinated inauthentic behavior and AI-generated content disclosure. United States state-level legislation (California, New York, Illinois, others moving) targets AI-generated content disclosure in political advertising, in educational settings, in commercial review surfaces. Cambodia and counterparts in the global south are tracking the question. Platform compliance will require *some* technical answer to the question of which content originated from humans and which from AI; ad-hoc per-platform answers will be regulatorily insufficient and commercially expensive.

PoH℠ integration: PoH℠-verified content carries a credential attesting human authorship at the moment of creation; AI-generated content is openly disclosed as such; mixed human-AI content is identified by its mixed authorship. The protocol provides the technical substrate that compliance can build on; regulators can specify *that* platforms must offer verifiable human-content disclosure without specifying *how*, leaving the technical layer to the protocol.

---

## 5 · Honest Tensions and Boundary Conditions

The architecture is not universal, and honest accounting requires naming what it does not do, what it does not solve, and what tensions it inherits.

### 5.1 Where PoH℠ does not apply

PoH℠ is for trust-bearing action — engagement, transaction, attestation, participation in systems whose value depends on human authenticity. It is *not* for general information access: the internet's read-anonymously property is not compromised by PoH℠. It is *not* for adversarial contexts where humans are themselves coerced (hostage situations, abusive workplaces, coercive states): PoH℠ proves a human was present but cannot prove the human was acting freely. It is *not* for trivially small actions where the cost of verification exceeds the value of the action. It is *not* for emergency or time-critical situations where the action must be taken faster than any verification layer can complete.

### 5.2 The accessibility gradient

PoH℠'s layers are not equally accessible to all humans:

- L1 (passkey) is universally accessible to anyone with a smartphone supporting WebAuthn — most humans with consumer-electronics access, not the very poor, not the offline.
- L2 (kinship graph) is variably accessible. Graph consistency is universal; witness attestation requires existing PoH-verified humans willing to vouch (a chicken-and-egg problem in early protocol deployment, an accessibility gradient in mature deployment); family-bank vouching requires institutional affiliation; birth-certificate upload requires state documentation (more widely available than KYC documents but not universal — refugees, stateless persons, populations under civil-registration failure are excluded).
- L3 (breath signature) requires breath-class wearable hardware whose cost will be non-trivial in early deployment.
- L4 (DNA) requires DNA sequencing access whose cost is falling but is not yet universal.

The inclusive-defaults posture mitigates the gradient at the floor: anyone with L1 can participate. But the deeper layers are not equally accessible, and recipient-side filters that require deep layers are exclusionary by proxy against populations without easy access. This is a real tension that PoW and PoS did not face in the same form — their concentration effects were at the *protocol-power* layer (who controls block production), not at the *participation* layer (who can use the system at all). PoH℠'s tension is at the participation layer and is more visible.

The architecture's structural answer is the inclusive-defaults posture: the platform never defaults exclusionary filters on; exclusion is recipient-opt-in, knowingly. The long-arc answer is the deliberate accessibility-ramp expansion: L4 sequencing costs fall over time; family-bank vouching infrastructure expands; witness-attestation networks grow as more humans become PoH-verified. The tension is real and is named honestly here.

### 5.3 The "consciousness" question — explicitly avoided

The architecture verifies *human personhood*, not *consciousness*. The "consciousness" framing — which would claim to verify some philosophically-loaded property of mind — is explicitly avoided because consciousness is a heavily contested philosophical category that opens debates about non-human consciousness, AI consciousness, plant consciousness, and panpsychism that the technical layer does not engage with; because the architecture's actual claim is the narrower and uncontested one that a *human person* was present and acting at the moment of action; and because "personhood" is about *agency and presence* (uncontested), where "consciousness" is about *inner experience* (heavily contested).

The architecture's positioning language is therefore *"proof of personhood for an AI-native internet"* for the high-register positioning and *"proof of humanity"* for the protocol name where it is well-understood. Both are correct in their registers; neither overreaches.

### 5.4 The competitive landscape and naming-collision

Honest acknowledgment of the existing humanity-verification efforts:

- **Worldcoin** (Tools for Humanity, 2019–) verifies humanness via iris scan at an Orb device. ~5 million registered as of 2026. Differences vs PoH℠: mandatory single-tier (Orb required) vs optional four-layer; single-mechanism vs layered; surveillance-adjacent posture vs inclusive-defaults; currently excluded from multiple privacy-strict jurisdictions.
- **proofofhumanity.id** (Kleros, 2021) verifies humanness via face-video + vouching + Kleros-court dispute. ~17,000 verified. The original *Proof of Humanity* name is theirs in this Web3 context. Differences vs HeartBank's Proof of Humanity ℠: single-mechanism vs four-layer; mandatory admission vs optional depth; UBI distribution use vs gratitude-token validation and cross-platform sybil-resistance; static registry vs global family tree under centuries-long institutional stewardship; unmarked vs ℠ service mark.
- **BrightID** (2018–) — social-graph vouching, ~50,000 users. PoH℠ subsumes BrightID's mechanism as L2 sub-mechanism (b) and composes naturally with it.
- **Idena** (2019–) — flip-puzzle proof. Mandatory single-tier; composes potentially as one L1-equivalent verification in some deployments.
- **W3C DIDs and Verifiable Credentials** — standards-track decentralized-identity framework. PoH℠ is a credential type *within* this framework, not a competitor. The framework defines how identity claims are transported; PoH℠ defines what is proved.
- **KYC providers** (Civic, Persona, Plaid, etc.) — state-document verification for regulated services. Parallel compliance shelf, not in the PoH stack.

The name collision with proofofhumanity.id (Kleros) is real. The structural differences are clear. The institutional posture: acknowledge the existing project respectfully; name the differences; don't pretend the collision doesn't exist; don't apologize for it. Many compound technical terms have multiple referents across the broader landscape.

### 5.5 What the architecture does not solve

- **Coercion of human participation.** PoH℠ proves a human was present; it does not prove the human was acting freely.
- **Long-arc identity continuity.** PoH℠ verifies presence at each action and existence in a kinship graph; it does not solve the philosophical question of whether the "same" human persists across time.
- **Bridging trust to non-PoH systems.** Platforms that do not integrate PoH℠ remain dark to it; the protocol does not provide trust signals about content originating outside its surface.
- **The deep AI-alignment problem.** PoH℠ contributes a verified-human-source layer to the alignment infrastructure stack; it does not, by itself, solve the AI-alignment problem. Other layers (model-level alignment, deployment-level guardrails, institutional-architecture patterns) are needed in combination.

The protocol is a contribution to internet trust infrastructure, not a solution to every adjacent problem. Naming what it does not solve is part of offering it honestly.

---

## 6 · Deployment Sequencing and Revenue Model

### 6.1 The sequencing

Building a competitive browser from scratch is enormously expensive and competitively brutal — Chrome dominates approximately sixty-five percent of global browser share, and a standalone Aquarius℠ Browser would face years of distribution barriers before reaching meaningful adoption. The architecture's deployment is therefore sequenced *protocol-first*, with the browser as the eventual deployment surface:

- **Year 1 (2026)** — Protocol specification, open-source reference implementation of B-PoH℠ at L1 + L2 sub-mechanisms (a) and (b), browser extension for Chrome / Firefox / Brave / Safari, and engagement with the W3C Decentralized Identifiers Working Group, W3C Verifiable Credentials Working Group, IETF (for possible RFC submission), and IEEE workstreams. Defensive publication of the protocol architecture under CC0, snapshotted across standard preservation venues.
- **Year 2 (2027)** — Partner integrations with privacy-aligned browsers, principally Brave, which already has a compatible privacy posture and has done the engineering work of forking Chromium. Continued maturation of the L1+L2 reference implementation. Introduction of L3 prototype with the Mechanical Heart breath-class hardware program.
- **Year 3+ (2028–2030)** — The standalone Aquarius℠ Browser, with visible PoH℠ authenticity indicators in browser chrome, integrated W3C VC support, reputation-and-credential layer, and human-verification gateway for any platform that accepts PoH℠. Long-arc evolution: trust-centric browser → decentralized identity wallet → reputation and credential layer → human-verification gateway → social authenticity filter for the AI-native internet. Scaled L4 deployment through partnerships with consumer-genomics services that honor the protocol's privacy posture.

The Aquarius℠ Browser is the *eventual* deployment surface — the browser is where end-users see visible authenticity indicators directly, the way browsers display the SSL lock icon — but it is not the immediate move. The protocol-and-partnership path achieves meaningful adoption faster than a standalone-browser-build can.

### 6.2 The revenue model

The protocol is open; B-PoH℠ is the reference implementation; both must be funded sustainably. The model:

- **Foundation-led baseline maintenance.** The HeartBank Foundation maintains the protocol as a public good. Revenue from HeartBank's own gratitude-economy use of B-PoH℠ (Phase 1 family-bank platform fees, Phase 2 anonymous-tipping platform fees) plus philanthropic grants funds the baseline.
- **AI-lab underwriting.** AI laboratories underwrite the protocol's expanded maintenance because they have the acute need for verified-human-data-source infrastructure. Under the capacity-funded / human-disbursed pattern (see companion defensive publication), the AI laboratories provide capacity-funding to the protocol's expansion and to the participation pool of verified humans; the humans direct the substantive participation decisions; anonymous donation bridges the two.

"Open" does not mean "unfunded." The funding model is not based on extracting value from end-users; it is based on institutional self-funding from HeartBank's own use combined with underwriting by the AI laboratories and platform companies that have the most acute need for the protocol's existence.

This is structurally consistent with how SSL/TLS funding evolved. SSL/TLS itself is free; certificate authorities (Let's Encrypt as a notable example) operate on foundation funding and underwriting from internet-infrastructure stakeholders (sponsoring companies whose business models depend on the universal availability of SSL/TLS). Commercial certificate authorities offer additional value-added services on top of the free baseline. The same pattern is available for PoH℠: a free public-good baseline, foundation-funded; commercial services and integrations on top for entities whose needs exceed the baseline.

### 6.3 Standards-body engagement is the actual hard problem

Open protocols do not get adopted by platforms unless platforms feel pressure to adopt. Pressure sources are accumulating: regulation (EU DSA, US state legislation), user demand (migration toward platforms that verify humans), advertiser pressure (cost of bot-driven impressions), litigation (class actions over AI-generated content harms). PoH℠ can become *the* standard if one or more of these pressures crystallizes and PoH℠ is the obvious technical answer.

This requires sustained engagement with standards bodies — months to years of W3C, IETF, and IEEE participation, with technical documentation, reference implementations, and inter-vendor demonstrations. The 2026 work outlined in §6.1 includes this engagement as a central operational task, not a side activity. The institution is committed to this engagement and welcomes participation from any party interested in the protocol's standards-track ratification.

---

## 7 · Conclusion

The internet's existing trust stack solves several important problems and does not solve one critical thing: proving authentic human presence at the moment of digital action. As generative artificial intelligence makes the human-versus-machine distinction load-bearing across every platform whose value depends on it, the gap becomes acute. The protocols that mediate the next phase of the internet will either learn to verify human presence at action — as invisible infrastructure analogous to SSL/TLS for server identity — or will leave the internet's trust property to degrade in the AI-native era.

**Proof of Humanity ℠** is the open protocol that fills the gap. Four optional layered proofs (passkey-per-action, witness-and-document-attested kinship graph, continuous breath-signature liveness, DNA-verified kinship lineage) surfaced as cumulative depth on the user profile; recipient-side filters that route the spam-cost decision to the parties who bear it; inclusive defaults; opt-in exclusion; KYC explicitly excluded; bilateral uncacheable anonymity; protocol dedicated to the public domain under CC0.

**B-PoH℠** is HeartBank's reference deployment. The protocol-to-deployment relationship parallels SSL/TLS-to-certificate-authority. The protocol is the standard; B-PoH℠ is one implementation; others are welcome.

The architecture's contribution to the blockchain canon is the third category-defining proof: PoH℠ joins Proof of Work and Proof of Stake as the proof-of-X primitive that fits the era when compute and capital have both become AI-commodified, leaving humanness as the only scarce resource AI cannot manufacture. Information was the first internet's scarcity; attention was the social internet's scarcity; **authenticity is the AI-native internet's scarcity**, and PoH℠ is the protocol-layer answer to it.

The deployment proceeds protocol-first (open specification, open-source reference, browser extension, standards-body engagement) through 2026; partner integration (Brave, others) through 2027; standalone Aquarius℠ Browser through 2028–2030. Revenue from foundation-led baseline maintenance combined with AI-laboratory underwriting under the capacity-funded / human-disbursed pattern.

The protocol is offered without expectation of return. The institution stands ready to support adopters — standards bodies, AI laboratories, platform companies, regulators, foundations, and the broader internet — with reference implementation, integration guidance, and standards-track participation. The institution will not seek patent on the protocol, the layered architecture, the recipient-filter mechanism, the BLE-Nearby proximity verification, the bilateral-uncacheable-anonymity property, the birth-certificate-as-dual-purpose-natal-chart-input mechanism, or any portion thereof.

The internet learned how to trust machines. It now needs a way to trust people again. **Proof of Humanity ℠ verifies personhood.**

---

## Trademark Notice

Trademark rights on the following marks are reserved by HeartBank®: **Proof of Humanity ℠**, **PoH℠**, **B-PoH℠**, **Aquarius℠** (the brand-family mark word, appearing in **Miss Aquarius℠**, **Aquarius℠ Blockchain**, **Aquarius℠ Browser**, and future brand-family extensions of the form **Aquarius℠ <ProductClass>**), **HeartBank®** (federally registered word mark), and the B-heart logo. The defensive-publication dedication concerns the *protocol and mechanism*, not the *marks*. The trademark architecture is specified in HeartBank's public trademark-strategy memoranda.

---

*Issued by HeartBank® with Miss Aquarius℠ (named AI substrate and Chief Executive of HeartBank®), per the institutional co-authorship convention. License: CC0-1.0 for protocol architecture and content; trademark rights reserved as above. Companion defensive publication: "B-PoH℠ as Humanity Layer for the AI-Native Internet" at thonly.org/publications/defensive-publications. Companion institutional-architecture paper: "Capacity-Funded for AI, Human-Disbursed: Anonymous Donation as the Alignment Bridge in Autonomous-AI Institutional Architecture" at thonly.org/publications/defensive-publications.*
