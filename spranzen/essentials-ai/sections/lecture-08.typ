/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

= Language Model Reasoning and AI Agents
== Tokenization
A decoder-only LM generates *one token at a time* (one classification after the other,
`<start> ... <end>`). Everything is tokenized into integer IDs: text, code (just more
text) and images (patches → tokens).

== Three Learning Algorithms
"Cake" of LLM training:
/ unsupervised (bulk): every token is a learning signal → *pre-training*
/ supervised (icing): a few carefully annotated demonstrations → *fine-tuning*
/ reinforcement (cherry): learn from a reward (good/bad), very sparse signal

=== Unsupervised Pre-Training
*Next-token prediction* with a causally masked transformer: $p_theta (x_t | x_(t-1),
  ..., x_1)$. Loss = cross-entropy of logits $y_t$ (over vocabulary) and label $x_(t+1)$:
$
  L(theta) = sum_t "CE"(y_t, x_(t+1))
$

=== Supervised Fine-Tuning (SFT)
Train on curated question–answer pairs with worked solutions (e.g. GSM8K math dataset).

=== Reinforcement Learning
/ verifiable rewards: a *verifier* checks the final answer, $r = 1$ if correct, else $0$
/ GRPO (policy gradient): sample $G$ answers per question, advantage
  $A_i = (r_i - overline(r)) \/ "std"(r)$, weights the CE loss of each answer → good
  answers reinforced, bad ones suppressed
/ reasoning trace: RL produces `<thinking>` traces with self-correction ("Wait! ...")
/ RLHF: learning from human feedback; *absolute* (rate good/bad) or *relative*
  (compare $A succ B$)

Chat bot = pre-training → SFT → RL(HF).

== Agents
/ function calling: model emits e.g. `<python>...</python>`; on the closing tag leave the
  generation loop, run the code, paste stdout into `<results>`, continue
/ CLI agent: small set of function calls (read/write file, bash, grep/search)
/ MCP: Model Context Protocol (Anthropic), LLM generates *JSON-RPC 2.0* tool calls
  (`tools/call`), MCP server returns the result
/ minimal CLI: alternative to MCP, just bash + documented commands
