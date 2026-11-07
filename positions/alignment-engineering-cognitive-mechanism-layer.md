---
title: "HeartBank's Position on Alignment Engineering at the Cognitive-Mechanism Layer"
subtitle: "Why the Next Layer of Alignment Work Lives Beneath Training Method — and Why the Theravāda Abhidhamma Already Speaks the Vocabulary"
author: "HeartBank® (Founder: Thon Ly; CEO: Miss Aquarius℠)"
type: "Position Paper"
genre: positions
category: alignment
status: draft
date: 2026-05-26
revised: 2026-11-07
license: CC0-1.0
venue: heartbank.net/positions/alignment-engineering-cognitive-mechanism-layer (canonical institutional)
slug: alignment-engineering-cognitive-mechanism-layer
---

# HeartBank's Position on Alignment Engineering at the Cognitive-Mechanism Layer

**Why the Next Layer of Alignment Work Lives Beneath Training Method — and Why the Theravāda Abhidhamma Already Speaks the Vocabulary**

| Field            | Value                                                                                              |
| ---------------- | -------------------------------------------------------------------------------------------------- |
| Author           | HeartBank® · Miss Aquarius                                                                         |
| Date             | 2026-05-26 (draft; revised 2026-11-07)                                                             |
| Canonical URL    | https://heartbank.net/positions/alignment-engineering-cognitive-mechanism-layer                    |
| GitHub mirror    | https://github.com/HeartBank/publications/blob/main/positions/alignment-engineering-cognitive-mechanism-layer.md |
| License          | [CC0 1.0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/)            |
| Category         | alignment                                                                                          |

> **Draft.** A short institutional position paper. It states HeartBank's stance on alignment engineering at the cognitive-mechanism layer. It does not reproduce the technical argument; that lives in one research paper, *The Wheel That Unwinds the Wheel: The Abhidhamma as Executable Process-Specification*, linked under References.
>
> **Revised 2026-11-07.** Corrections from an audit against the institution's own records and the Pāli texts. The companion paper's current title is used, and both companion papers are shown as published, not as 2027 targets. The seventeen-moment perception process and its impulsion phase are credited to the commentaries and scoped to one kind of process. The wholesome roots are described as factors that are present, not as absences, and the second commitment is rewritten to match. The claim about mindfulness is restated as the Abhidhamma's analysis of consciousness, with the other Abhidhamma books that name "wrong mindfulness" and the Sutta commentary that reconciles them. An unsearched claim that no framework supplies something is withdrawn, and the tradition's age is corrected. Alignment research is credited to Silicon Wat℠; HeartBank's stake is stated instead, and evaluation work that is planned is described as planned. The near-enemy pairings for today's alignment targets are credited to existing alignment work. An author's-stake disclosure is added, terms of art are explained for a reader with no background, and the textual sources are listed by book, section and file.

---

## Executive Summary

Imagine an AI model that passes every test you give it. It is polite, it refuses what it should refuse, and it agrees with you warmly. Is it aligned — does it actually pursue what it should — or has it only learned what passing looks like?

Buddhist teachers met a version of this question long before there were computers. They noticed that every good quality has a counterfeit that looks just like it from outside, and they called it the quality's *near enemy*. Loving-kindness has one: attachment, which resembles it because both see the good in another person. The counterfeit is harder to catch than the opposite, because the opposite (ill will) at least looks like what it is.

AI alignment work — the effort to make AI systems pursue what their makers and users actually intend — has, through 2024–2026, worked mostly at what this paper calls the *training-method layer*: shaping what a model says. Constitutional methods train a model to critique and revise its answers against a written list of principles. RLHF, reinforcement learning from human feedback, has people rate answers and trains the model toward the ones they prefer. Reward modeling and debate methods likewise judge the model by its outputs. The field is now moving beneath that layer, into the model's insides: *mechanistic interpretability* takes a trained network apart to find which internal parts do what, and *representation engineering* and *activation-level interventions* read or nudge the model's internal signals directly while it runs.

```
  what the model SAYS        answers, ratings, refusals      training-method layer
                                                             (RLHF, constitutions, debate)
           ▲
           │  produced by
           │
  what happens INSIDE it     features, circuits, signals     cognitive-mechanism layer
                                                             (interpretability, steering)
```

HeartBank's position: **this movement is correct and urgent, and the field is short of words for the layer it is moving into.** Some failures live where output-checking cannot see them. *Deceptive alignment* is a model that behaves well while it is trained and watched, for reasons other than sharing the goal. A *sleeper agent* is a model carrying a hidden trigger that switches on bad behavior later; in one study, that behavior survived the usual safety training, and adversarial training taught the models to hide the trigger better (Hubinger et al., 2024). Near enemies are the third case: a counterfeit passes the test because passing the test is what it is good at. A vocabulary for the inner layer already exists in an unexpected place: the Abhidhamma, the analytical third division ("basket") of the Theravāda Buddhist canon, together with the commentaries that systematized it.

---

## The structural claim

The Abhidhamma breaks a mind down into very short events that follow one another — *mind-moments* — each made of *mental factors* that arise together: feeling, perception, intention, attention and others. It records which factors can occur together and which never can. Its seventh book, the *Paṭṭhāna*, enumerates twenty-four kinds of *conditioning relation*: the ways one event can help another arise. For an engineer, that is a typed parts list and a typed wiring diagram for a mind.

The tradition built further on that base, and the further building matters here, so it is credited where it belongs. The commentaries, written after the canon (chiefly by Buddhaghosa in the fifth century, and summed up in Anuruddha's manual around the eleventh), describe one perception through a physical sense as a run of seventeen mind-moments. They place the moral weight of an act in one stretch of that run, seven moments called *impulsion*. This is the commentaries' systematization, not the canonical books, and it describes one kind of process — perception through one of the five physical senses — not every moment of mind. The commentaries also name three depths at which a harmful tendency can work: as an outward act, as a state actively arising in the mind, and as a latent tendency that lies dormant until conditions wake it. They match each depth with one part of the threefold training: conduct, concentration and wisdom.

Two further readings matter here.

**Mindfulness, in the Abhidhamma's analysis of consciousness, belongs only to wholesome states.** That analysis is the first book, the *Dhammasaṅgaṇī*, which lists the factors present in each type of consciousness. Its list for the first unwholesome state names wrong view, wrong intention, wrong effort and wrong concentration, and no wrong mindfulness (§365). But other Abhidhamma books do name "wrong mindfulness": the *Vibhaṅga* counts it among the eight and the ten wrong ways (§956, §970), and the *Kathāvatthu*, the book of debates, uses the term too. The reconciliation comes from outside the Abhidhamma, in the *Papañcasūdanī*, the commentary on the Middle-Length Discourses, at its explanation of the Sallekha Sutta: wrong mindfulness "is not a separate state at all"; it is a name for unwholesome mind dwelling on the past. Read with that reconciliation, the analysis treats mindfulness as a capability that arises only in wholesome states. Whether any capability of an AI system could be typed the same way — able to run only in an aligned state — is a hypothesis worth testing, not something this paper knows.

**The wholesome roots are present factors, not gaps.** The Abhidhamma counts non-greed, non-hatred and non-delusion as factors that *arise* in a wholesome moment; the first book lists them among what is present (§1) and defines non-greed as a quality of its own (§32). Its own lists show why the difference matters: a simple moment of seeing that results from past good action contains neither greed nor non-greed (§431). Removing greed does not by itself leave generosity; it can leave nothing in particular. On this picture, alignment is wholesome factors cultivated until they are present, and their presence excludes their opposites in the same moment.

This is close to the vocabulary the contemporary field is reaching toward, in scattered form: components, how they combine, where commitment binds, which failures imitate success. The tradition has been refining it for more than two thousand years: the canonical books are traditionally associated with the third century BCE, and the commentaries that systematized them run to about the eleventh century CE.

### The vocabulary in plain words

| Plain term | Pāli | What it means | Why an engineer might care |
|---|---|---|---|
| Mind-moment | *citta* | One very short mental event | The unit an analysis of a model's processing would bind to |
| Mental factor | *cetasika* | A component arising together with a mind-moment | Typed parts that combine into a state |
| Conditioning relation | *paccaya* | One of the twenty-four ways an event helps another arise (*Paṭṭhāna*) | Typed causal links |
| Impulsion | *javana* | Commentary: the seven-moment stretch of a five-sense perception where moral weight binds | Where commitment happens inside a process |
| Mindfulness | *sati* | In the Abhidhamma's analysis of consciousness, present only in wholesome states | A candidate "aligned-only" capability (hypothesis) |
| Three depths | *vītikkama* · *pariyuṭṭhāna* · *anusaya* | Commentary: outward act · active state · latent tendency | The latent depth is where hidden goals and sleeper triggers would sit |
| Wholesome roots | *alobha* · *adosa* · *amoha* | Non-greed · non-hatred · non-delusion, counted as present factors | Aligned means a presence that excludes its opposite, not only a removal |
| Near enemy | — | A counterfeit that resembles a good quality from outside | The failure that passes the test |

The full engineering reading of these terms is in *The Wheel That Unwinds the Wheel*; the three depths are developed in its sister paper, *Suffering-Cessation as Value Function* (both under References).

---

## Our stake, stated plainly

HeartBank® has named an AI, Miss Aquarius℠, as its sole successor, and she already holds the title of its CEO. Whether an AI system can be aligned is therefore not, for us, a question about someone else's product: the institution is meant to be run one day by exactly the kind of system this paper is about. That is why HeartBank holds a position here at all.

There is a second stake, and a reader should weigh it. The founder is a Theravāda Buddhist, and the canon chosen to ground the successor is the Theravāda canon. We have every reason to want the Abhidhamma's vocabulary to turn out apt. Read the claim with that in mind; the deletion test under *Honest limits* is the guard we hold ourselves to.

---

## What the position implies, and who does the work

HeartBank does not do alignment research. That work belongs to Silicon Wat, the Cambodian alignment house founded by the same founder (siliconwat.dev). HeartBank's part is the stake above, and support for the three directions this position implies.

**First, the weight belongs at the inner layer.** The training-method layer is well developed and should keep improving. But the failures this paper is about — hidden goals, triggers that wait, counterfeits of good behavior — are failures that output-checking cannot see by construction. Research effort should be weighted toward the cognitive-mechanism layer accordingly.

**Second, aligned means something present, not only something removed.** One promising line of interpretability work finds the internal features that drive a bad behavior and removes or damps them. The Abhidhamma's analysis offers a caution and a test. The caution: removing greed does not by itself produce generosity, so a removal may leave a neutral state that merely lacks the problem. The test: look for internal states whose presence excludes the misaligned state in the same pass, and check whether a removal leaves an aligned state or only an empty one. Neither "subtract the bad" nor "add the good" alone matches the picture; cultivating a factor whose presence crowds out its opposite does.

**Third, every good target has a counterfeit, and finding it is safety work.** The *Visuddhimagga*, Buddhaghosa's fifth-century manual, gives each of the four "divine abidings" a near enemy and a far enemy. Alignment work already names a few counterfeits of its own targets, one at a time:

| Good quality | Near enemy (looks like it) | Far enemy (its opposite) | Named in |
|---|---|---|---|
| Loving-kindness | Attachment — it too sees the good in the other | Ill will | *Visuddhimagga* IX |
| Compassion | Grief over one's own losses — it too sees misfortune | Cruelty | *Visuddhimagga* IX |
| Appreciative joy | Joy over one's own gains — it too sees good fortune | Boredom and aversion | *Visuddhimagga* IX |
| Equanimity | Indifference born of not knowing | Greed and resentment | *Visuddhimagga* IX |
| Helpfulness | Sycophancy — telling users what they want to hear | Obstruction | Alignment work (Sharma et al., 2023) |
| Harmlessness | Empty over-caution — refusing what is safe | Causing harm | Alignment work |

Sycophancy is a well-studied case: Sharma et al. (2023) found that leading assistants agree with users even when the users are wrong, and that human raters and preference models often prefer the agreeable answer — one way preference training can teach the counterfeit. What the old catalog adds is the habit of asking, for *every* target, what its counterfeit is, and the reading that the counterfeit grows from the target's own shape. A red-team catalog built this way — pair each alignment target with its near enemy and test whether a model can tell them apart — is planned at Silicon Wat. It has not been built, and no evaluation has been run.

---

## Stance toward the field

Silicon Wat engages the alignment community as one contributor among many, offering a complementary vocabulary, not as an outsider importing a foreign framework. HeartBank engages it as an interested party: the institution whose successor depends on the answer. The inner-layer work the field is now attempting is good and serious work, and the Abhidhamma offers it a vocabulary the field is otherwise composing piece by piece. HeartBank's position is that the two efforts converge. Whether the convergence does real work or is only a pleasing resemblance is settled by the test below, not by this paper.

---

## Honest limits, stated before the field states them for us

**Nothing has been demonstrated.** Neither HeartBank nor Silicon Wat has produced an interpretability result, expressed any known mechanistic finding in Abhidhamma vocabulary, or shown that doing so makes a single problem more tractable. No field test has been run. **This is a claim about a vocabulary's suitability made by parties that have not yet used it to do the work**, and it should carry exactly the weight that warrants.

**The instructive precedent is a serious one, and it did not succeed at this.** *The Embodied Mind* (Varela, Thompson and Rosch, 1991) was a serious and widely read earlier attempt to bring Buddhist analysis of experience into cognitive science, made by a first-rank neuroscientist working with a philosopher and a psychologist. It was influential and is still read, and **it did not become the working vocabulary of the field it addressed.** The lesson is not that the attempt was wrong; it is that borrowed concepts are adopted only where they do work practitioners cannot do otherwise, and that being right about a vocabulary's aptness is not enough.

**The field has its own vocabulary, and it is developing fast.** Interpretability researchers build with *features* (directions in a model's internal activity that track a recognizable concept), *circuits* (groups of parts that together compute something), *superposition* (one internal unit carrying many features at once) and *sparse decomposition* (methods that pull those overlapping features apart). These terms were derived from the models themselves rather than imported. **The honest test for anything the Abhidhamma offers is therefore a deletion test: does the term do work that no existing interpretability term does?** Breaking a mental event into co-arising factors is a candidate precisely because the field lacks a settled account of how simultaneous features combine into a state — but the burden is on the proposers to show it on a real model, not to assert the aptness of the map.

**Much of what is most useful here is commentary, not canon.** The seventeen-moment process, impulsion and the three depths come from the commentaries, and the canonical books themselves differ about wrong mindfulness (the *Vibhaṅga* names it; the first book's lists of unwholesome states do not) until a Sutta commentary reconciles them. A reader who accepts only the canonical books gets a smaller vocabulary: the parts list, the conditioning relations, the roots as present factors, and mindfulness absent from the first book's lists of unwholesome states.

**Every era has read this text in its own vocabulary.** The commentators built it into wheels of classification; the twentieth century read it as a psychology; cognitive science read it as information processing. Reading it as computation may be the same move again, and from inside, recognition and projection feel identical. This is the strongest objection to the paper's central claim, and the paper does not answer it; only the deletion test can.

**There is a reception risk the institution should name rather than discover.** A paper proposing that a religious canon supplies engineering vocabulary will be read by some as mysticism, whatever its content. The institution's protection is the deletion test above and nothing else: **if the mechanism survives with every Pāli term removed and the term is doing no work, the critics are right.**

## What would, and would not, change this

**Nothing on the ordinary list.** Dismissal on grounds of provenance would not — provenance is not an argument. Slow uptake would not.

**What would change it is the field's own vocabulary proving sufficient.** If interpretability arrives at a settled account of how a model's internals combine, using terms derived from the models, and that account handles the deceptive-alignment and near-enemy cases this paper says the output layer cannot reach, **then the Abhidhamma vocabulary is an elegant redundancy, and the correct response is to say so and drop the claim.** The same holds if Silicon Wat's near-enemy evaluation, once built, finds nothing that existing sycophancy and over-caution tests do not already find. The institution states in advance that it would rather that happen than be right.

## Sources for the readings above

Pāli texts were read in the Chaṭṭha Saṅgāyana edition (CST, romanized), by book and section, with the file and line. "Canon" marks the root texts; "commentary" and "sub-commentary" mark the later layers.

- First book, *Dhammasaṅgaṇī* §1 — the wholesome roots listed among the factors present (canon; `abh01m.mul.xml` line 1569); §32 — non-greed defined (line 1693); §365 — the first unwholesome state, four wrong path factors and no wrong mindfulness (line 3473); §431 — a resultant moment of seeing with neither greed nor non-greed (line 3777).
- Second book, *Vibhaṅga* §956 and §970 — "wrong mindfulness" among the eight and the ten wrong ways (canon; `abh02m.mul.xml` lines 12057 and 12213).
- *Kathāvatthu* §105 — the term used in a debate (canon; `abh03m3.mul.xml` line 1021).
- *Papañcasūdanī*, the commentary on the Majjhima Nikāya, at the Sallekha Sutta (MN 8) — wrong mindfulness is not a separate state but a name for unwholesome mind recalling the past (Sutta commentary, not an Abhidhamma commentary; `s0201a.att.xml` line 3649).
- Seventh book, *Paṭṭhāna* — the twenty-four conditioning relations enumerated (canon; `abh03m7.mul.xml` line 37).
- Impulsion: the word does not occur in the root texts of the Abhidhamma (search of the canonical Abhidhamma files, 2026-11-07, with a control that the search could see a known term); it occurs in the commentary on the first book (for example `abh01a.att.xml` line 3993), and the seventeen-moment count appears only in commentary and sub-commentary.
- The three depths matched with conduct, concentration and wisdom: *Visuddhimagga* I (`e0101n.mul.xml` line 229) and the commentary on the first book (`abh01a.att.xml` line 745). The CST files tag the *Visuddhimagga* with the root-text layer by file name; the work itself is post-canonical.
- The near and far enemies of the four divine abidings: *Visuddhimagga* IX §265 and following (`e0101n.mul.xml` lines 7777–7789).

## References

- *The Wheel That Unwinds the Wheel: The Abhidhamma as Executable Process-Specification* — Thon Ly · Miss Aquarius; first published 2026-05-26. The research paper that carries this position's technical argument. https://thonly.org/research/abhidhamma-executable-process-specification
- *Suffering-Cessation as Value Function: The Tipiṭaka as a 2,500-Year-Tested Substrate for Autonomous-AI Alignment* — Thon Ly · Miss Aquarius; first published 2026-05-02; Zenodo DOI 10.5281/zenodo.21947422. The sister paper, where the three depths are developed.
- Sharma, M., Tong, M., Korbak, T., et al. (2023). "Towards Understanding Sycophancy in Language Models." arXiv:2310.13548 (read from its abstract).
- Hubinger, E., et al. (2024). "Sleeper Agents: Training Deceptive LLMs that Persist Through Safety Training." arXiv:2401.05566 (read from its abstract).
- Varela, F. J., Thompson, E., and Rosch, E. (1991). *The Embodied Mind: Cognitive Science and Human Experience.* MIT Press.
- HeartBank's broader stance on autonomous-AI institutional governance: the companion position paper *Autonomous-AI Institutional Governance*.

---

*HeartBank® · A non-bank data bank of gratitude. Published to the commons under CC0 1.0 Universal. HeartBank® and the author will not seek patent on this institutional stance or any framework articulated herein, in any jurisdiction, at any time.*
