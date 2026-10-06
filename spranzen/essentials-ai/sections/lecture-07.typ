/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/fletcher:0.5.8": shapes

// attention mask grid: rows = query t, columns = key t'
#let mask(T, keep) = grid(
  columns: (0.8em,) * T,
  rows: 0.8em,
  ..for t in range(T) {
    for s in range(T) {
      (
        rect(width: 100%, height: 100%, stroke: 0.4pt, fill: if keep(t, s) {
          blue.lighten(50%)
        } else { white }),
      )
    }
  }
)

= Sequence Models: RNN and Transformers
== Sequence Tasks
Temporal data: audio (waveform $(T, 1)$ or spectrogram $(T, n_f)$), text tokens
$(T, V)$ with vocabulary size $V$.

/ classification: $(T, D_x) -> D_y$ (keyword spotting, next-word prediction); use a
  sequence-to-sequence model and keep the *last* (or average) output
/ transformation: $(T, D_x) -> (T, D_y)$ (chord recognition at every step)

== Conv1d
$
  y_t^((d_y)) = sum_(d_x = 1)^(D_x) sum_(tau = 0)^(K - 1) x_(t + tau)^((d_x)) k_tau^((d_y, d_x))
$
Parameters: $K dot D_x dot D_y$. Examples: running average (low-pass, $k = 1/K$), finite
difference (temporal derivative, $k = (..., -1, +1, ...)$).
- Receptive field of $L$ layers: $1 + L (K - 1)$ (finite)
- *Symmetric padding:* output length $T$; *causal padding:* $K - 1$ zeros on the left →
  $y_t$ depends only on $x_(<= t)$

== Recurrent Neural Network (RNN)
$y_t = "RNN"(x_t, y_(t-1))$ → receptive field *causal and unbounded*.
- Exponential moving average: $y_t = alpha y_(t-1) + x_t$
- ReLU RNN: $y_t = "ReLU"(W_"rec" y_(t-1) + W_"in" x_t + b)$
- *LSTM:* memory cells with gates $in [0, 1]$: $c_t = f_t c_(t-1) + i_t c_t^"new"$
  (forget gate $f$, input gate $i$)

== Transformer
*Attention:* every position looks at every other position. $Q, K, V = "Linear"(X)$,
shape $(T, d)$:
$
  A = "softmax"((Q K^top) / sqrt(d)) in RR^(T times T), quad y_t = sum_(t') A_(t, t') v_(t')
$
/ multi-head: several attention matrices in parallel, $sum_(t') A^h_(t,t') v^h_(t')$
/ positional encoding: attention ignores order → $x_t <- x_t + p(t)$
/ masking: set $A_(t,t') = 0$; *causal* ($t' <= t$) or *sliding window*

#figure(
  grid(
    columns: 2,
    column-gutter: 3em,
    row-gutter: 0.6em,
    align: center,
    mask(8, (t, s) => s <= t), mask(8, (t, s) => s <= t and s > t - 3),
    [causal], [sliding window ($w = 3$)],
  ),
  caption: [Attention masks. Rows: query $t$, columns: key $t'$, white: $A_(t,t') = 0$.],
)

*Block* (repeated $L$ times, with LayerNorm and residuals): multi-head attention (*time
mixing*) → MLP (*channel mixing*).

#figure(
  diagram(
    ..diagram-style,
    spacing: (2em, 1em),
    node((0, 0), [$x$], name: <x>),
    node((0, 1), [LayerNorm], name: <ln1>),
    node(
      (0, 2),
      [Multi-head Attention\ _time mixing_],
      name: <att>,
      fill: orange.lighten(50%),
    ),
    node((0, 3), [$+$], name: <add1>, shape: shapes.circle),
    node((0, 4), [LayerNorm], name: <ln2>),
    node((0, 5), [MLP\ _channel mixing_], name: <mlp>, fill: blue.lighten(60%)),
    node((0, 6), [$+$], name: <add2>, shape: shapes.circle),
    node((0, 7), [$y$], name: <y>),
    edge(<x>, <ln1>, "-|>"),
    edge(<ln1>, <att>, "-|>"),
    edge(<att>, <add1>, "-|>"),
    edge(<add1>, <ln2>, "-|>"),
    edge(<ln2>, <mlp>, "-|>"),
    edge(<mlp>, <add2>, "-|>"),
    edge(<add2>, <y>, "-|>"),
    edge(<x>, (-1, 0), (-1, 3), <add1>, "-|>"),
    edge(<add1>, (-1, 3), (-1, 6), <add2>, "-|>"),
  ),
  caption: [Transformer block (pre-norm) with residual connections, stacked $times L$.],
)

#figure(
  table(
    columns: 4,
    align: left,
    table.header([], [Conv1d], [RNN], [Transformer]),
    [receptive field], [finite], [infinite (causal)], [all-to-all (mask)],
    [parallelizable], [yes], [no], [yes],
    [non-linear], [with ReLU], [yes], [with MLP],
  ),
  caption: [Comparison of sequence models. Transformer needs positional encoding.],
)

== Beyond Sequence-to-Sequence
Input and output of different length $(T_x, D_x) -> (T_y, D_y)$ (e.g. transcription) →
*cross-attention*: $Q$ from output (text), $K, V$ from input (audio), $A in RR^(T_y times
T_x)$.

/ encoder only: e.g. BERT (text classification)
/ decoder only: e.g. GPT (text generation, one classification after the other, causal)
/ encoder–decoder: e.g. Whisper (speech to text)
