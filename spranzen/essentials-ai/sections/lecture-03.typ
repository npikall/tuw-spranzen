/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/fletcher:0.5.8": shapes

= Decision Trees and Ensemble Models
== Decision Trees
Supervised model: predict by asking a sequence of simple questions. Each answer
splits the data into smaller groups and decides which branch to follow; a *leaf
node* gives the prediction.

#figure(
  diagram(
    ..diagram-style,
    spacing: (1.5em, 2em),
    node((1, 0), [Attended lectures?], name: <att>),
    node((0, 1), [No], name: <no1>, fill: red.lighten(60%)),
    node((2, 1), [Submitted exercises?], name: <sub>),
    node((1, 2), [No], name: <no2>, fill: red.lighten(60%)),
    node((3, 2), [Yes], name: <yes>, fill: green.lighten(50%)),
    edge(<att>, <no1>, "-|>", label: [false], label-side: right),
    edge(<att>, <sub>, "-|>", label: [true], label-side: left),
    edge(<sub>, <no2>, "-|>", label: [false], label-side: right),
    edge(<sub>, <yes>, "-|>", label: [true], label-side: left),
  ),
  caption: [Will the student pass the exam? Inner nodes ask, leaves predict.],
)

- Works with categorical and continuous features
- Continuous features → threshold questions: study hours $> x$?
- Each question splits one feature at a time → *rectangular* decision regions

== Training
Finding the minimal tree is NP-hard → greedy heuristic: pick a feature, split the
data across its values, repeat recursively until done.

=== Gini Impurity
Pick the split that produces the *purest* child nodes (pure node = all elements
from one class). For node $S$ with class proportions $p_k = abs(S_k) \/ abs(S)$:
$
  G(S) = sum_(k=1)^K p_k (1 - p_k)
$
$G = 0$ for a pure node, maximal for uniform class mix ($0.5$ for two classes).

#figure(
  {
    let ps = lq.linspace(0, 1)
    lq.diagram(
      width: 6cm,
      height: 3.5cm,
      xlabel: [$p$ (share of class 1)],
      ylabel: [$G$],
      xaxis: (subticks: none),
      yaxis: (subticks: none),
      lq.plot(ps, p => p * (1 - p) + (1 - p) * p, mark: none),
    )
  },
  caption: [Gini impurity for two classes: zero for pure nodes, maximal at a
    50/50 mix.],
)

Impurity of a split = size-weighted average of the children:
$
  G = G(S_1) (|S_1|) / (|S_1| + |S_2|) + G(S_2) (|S_2|) / (|S_1| + |S_2|)
$
*Lowest weighted impurity wins.* Example from the slides: _attended lectures_
($G = 0.167$) beats _likes cats_ ($G = 0.32$) and _submitted exercises_ ($G = 0.375$).

=== Continuous Features
+ Sort data by the feature
+ Candidate thresholds = mean of each pair of consecutive values
+ Evaluate each candidate like any other split

#gc.tip(title: "Practice")[
  - Trees need *no feature scaling* and handle mixed feature types.
  - Highly *interpretable*: the tree can be read as if-else rules. Fully grown
    trees, however, are unstable (small data change → very different tree).
  - Entropy / information gain is the common alternative to Gini; in practice
    both give very similar trees (scikit-learn default: Gini).
]

== Bias-Variance Tradeoff
Expected error decomposes into three parts ($h_D$: model trained on dataset $D$,
$macron(h)$: model trained on infinite data, $macron(y)$: true label, $y$: dataset label):
$
  EE[(h_D (x) - y)^2] = underbrace(EE[(h_D (x) - macron(h)(x))^2], "variance")
  + underbrace(EE[(macron(h)(x) - macron(y)(x))^2], "bias")
  + underbrace(EE[(macron(y)(x) - y(x))^2], "noise")
$

/ variance: error from finite training data; model changes a lot when the data changes
/ bias: model cannot represent the problem
/ noise: errors in the annotations, irreducible

=== Overfitting (High Variance)
Model memorizes training data, does not generalize. *Symptom:* training error much
lower than test error.

#figure(
  {
    let ds = lq.linspace(1, 10)
    lq.diagram(
      width: 7cm,
      height: 4cm,
      xlabel: [tree depth (model complexity)],
      ylabel: [error],
      xaxis: (ticks: none, subticks: none),
      yaxis: (ticks: none, subticks: none),
      legend: (position: top + right),
      lq.plot(
        ds,
        d => 0.5 * calc.exp(-0.45 * (d - 1)),
        mark: none,
        label: [training],
      ),
      lq.plot(
        ds,
        d => (
          0.5 * calc.exp(-0.45 * (d - 1)) + 0.004 * calc.pow(d - 1, 2) + 0.05
        ),
        mark: none,
        label: [test],
      ),
    )
  },
  caption: [Overfitting (schematic): training error keeps falling with depth,
    test error rises again once the tree memorizes the data.],
)

Causes: small training set, noisy labels, irrelevant features (e.g. _likes cats_).

Remedies for trees:
- more training data
- limit complexity (early termination): max depth, min elements per leaf, min impurity
- impure leaf → predict most frequent label (or class proportions)
- bagging / random forests

=== Underfitting (High Bias)
*Symptom:* high error already on training data.
*Remedy:* add features, use a more complex model (deeper tree).

*Tradeoff:* with growing model complexity, bias falls and variance rises; the
optimum complexity minimizes total error.

#figure(
  {
    let cs = lq.linspace(0.5, 5)
    let bias = c => 1 / c
    let var = c => 0.06 * c * c
    let opt = calc.pow(1 / 0.12, 1 / 3)
    lq.diagram(
      width: 7cm,
      height: 4.5cm,
      xlabel: [model complexity],
      ylabel: [error],
      xaxis: (ticks: none, subticks: none),
      yaxis: (ticks: none, subticks: none),
      ylim: (0, 2.8),
      legend: (position: top + center),
      lq.plot(cs, bias, mark: none, label: [bias#super[2]]),
      lq.plot(cs, var, mark: none, label: [variance]),
      lq.plot(
        cs,
        c => bias(c) + var(c),
        mark: none,
        label: [total error],
        stroke: 1.5pt,
      ),
      lq.vlines(opt, stroke: (dash: "dashed")),
    )
  },
  caption: [Bias-variance tradeoff (schematic). Dashed: optimum model complexity.],
)

#figure(
  diagram(
    ..diagram-style,
    spacing: (4em, 1.5em),
    node(
      (0, 0),
      [training error\ high?],
      name: <train>,
      shape: shapes.diamond,
      fill: orange.lighten(50%),
    ),
    node(
      (1, 0),
      [*high bias*\ more features,\ more complex model],
      name: <bias>,
    ),
    node(
      (0, 1),
      [validation error\ #sym.gt.double training error?],
      name: <val>,
      shape: shapes.diamond,
      fill: orange.lighten(50%),
    ),
    node(
      (1, 1),
      [*high variance*\ more data, limit depth,\ random forest],
      name: <var>,
    ),
    node((0, 2), [good fit], name: <ok>, fill: green.lighten(50%)),
    edge(<train>, <bias>, "-|>", label: [yes]),
    edge(<train>, <val>, "-|>", label: [no], label-side: left),
    edge(<val>, <var>, "-|>", label: [yes]),
    edge(<val>, <ok>, "-|>", label: [no], label-side: left),
  ),
  caption: [Diagnosing a model from training and validation error.],
)

#gc.tip(title: "Practice")[
  - Tune termination conditions (max depth, min samples per leaf) on the
    validation set like any other hyperparameter.
  - Shallow trees (depth 3--5) stay readable; deeper trees fit better but overfit
    without an ensemble.
]

== Random Forest
=== Bagging
Weak law of large numbers: average of many independent noisy measurements → true
expected value. Same idea for classifiers: train $m$ models on $m$ datasets and
average them:
$
  hat(h) = 1/m sum_(i=1)^m h_(D_i) -> macron(h) "as" m -> oo
$
→ variance term goes to $0$. Only one dataset available → draw $m$ *bootstrap
datasets* (sample from $D$ with replacement, same size).

=== Algorithm
+ Bagging: create $m$ bootstrap datasets
+ Train one decision tree per dataset; at each split consider only a *random
  subset of $k$ features*
+ Predict by averaging / majority vote over all $m$ trees

#figure(
  diagram(
    ..diagram-style,
    spacing: (1.5em, 1.5em),
    node((1, 0), [dataset $D$], name: <d>),
    node((0, 1), [$D_1$], name: <d1>),
    node((1, 1), [$D_2$], name: <d2>),
    node((2, 1), [$dots.c$], stroke: none, fill: none),
    node((3, 1), [$D_m$], name: <dm>),
    node((0, 2), [tree 1], name: <t1>, fill: green.lighten(50%)),
    node((1, 2), [tree 2], name: <t2>, fill: green.lighten(50%)),
    node((2, 2), [$dots.c$], stroke: none, fill: none),
    node((3, 2), [tree $m$], name: <tm>, fill: green.lighten(50%)),
    node(
      (1.5, 3),
      [majority vote / average],
      name: <vote>,
      fill: orange.lighten(50%),
    ),
    edge(<d>, <d1>, "-|>"),
    edge(<d>, <d2>, "-|>", label: [bootstrap], label-side: left),
    edge(<d>, <dm>, "-|>"),
    edge(<d1>, <t1>, "-|>"),
    edge(<d2>, <t2>, "-|>"),
    edge(<dm>, <tm>, "-|>"),
    edge(<t1>, <vote>, "-|>"),
    edge(<t2>, <vote>, "-|>"),
    edge(<tm>, <vote>, "-|>"),
  ),
  caption: [Random forest: bootstrap datasets, one tree each, combined vote.],
)

=== Hyperparameters
/ $m$ (number of trees): higher → more stable, but more compute
/ $k$ (features per split): high → trees too similar; low → trees too weak. Balance diversity vs. quality

*Why it works:* randomness in data and features → ensemble does not rely on a
single data point or feature → less overfitting, better generalization, smoother
decision boundaries than a single tree.

#gc.tip(title: "Practice")[
  - Typical $m$: *100--500* trees. More trees do not cause overfitting, they only
    cost compute; stop when the validation score no longer improves.
  - Typical $k$: square root of the number of features for classification
    (scikit-learn default), about one third of the features for regression.
  - A bootstrap sample contains only about *63 %* of the distinct samples. The
    remaining ~37 % (*out-of-bag* samples) give a free validation estimate.
  - Trees are independent → training parallelizes well. Forests also provide
    *feature importances*.
  - Strong default for tabular data: little tuning, no feature scaling needed.
]
