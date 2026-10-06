/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/fletcher:0.5.8": shapes

= Classification and Clustering
== Classification
Assign a *discrete label* (category, not a continuous value) to every input.

/ binary: one yes/no decision (animal?)
/ multi-class: exactly one of $K$ classes (fox, rabbit or eagle)
/ multi-label: any subset of labels may apply (fox and snow)

No obvious way to hard-code rules (e.g. _recognize a cat_) → *machine learning*:
data-driven, learn from labeled examples, generalize to unseen data.

#figure(
  diagram(
    ..diagram-style,
    spacing: (2em, 1.5em),
    node((0, 0), [labeled data], name: <data>),
    node((1, 0), [training], name: <train>),
    node((2, 0), [model], name: <model>, fill: orange.lighten(50%)),
    node((1, 1), [new data], name: <new>),
    node((3, 1), [predicted label], name: <label>),
    edge(<data>, <train>, "-|>"),
    edge(<train>, <model>, "-|>"),
    edge(<new>, (2, 1), <label>, "-|>", label: [inference], label-side: right),
    edge(<model>, (2, 1), "-|>"),
  ),
  caption: [Every ML workflow: training phase and inference phase.],
)

== Metrics
=== Confusion Matrix
Rows = actual class, columns = predicted class. Diagonal = correct predictions.
Per class $k$ (one-vs-rest):

/ TP: class $k$ predicted as $k$
/ FP: other classes predicted as $k$ (column of $k$ minus TP)
/ FN: class $k$ predicted as something else (row of $k$ minus TP)
/ TN: everything else

#figure(
  table(
    columns: 4,
    align: center,
    stroke: (x, y) => if x > 0 and y > 0 { 0.5pt },
    [], [*cat*], [*dog*], [*parrot*],
    [*cat*], table.cell(fill: green.lighten(70%))[5], [1], [1],
    [*dog*], [2], table.cell(fill: green.lighten(70%))[2], [1],
    [*parrot*], [1], [3], table.cell(fill: green.lighten(70%))[1],
  ),
  caption: [Pet classifier from the slides (rows: actual, columns: predicted).
    For cat: TP = 5, FP = 2 + 1 = 3, FN = 1 + 1 = 2, TN = 7.],
)

=== Per-class Metrics
$
  A_k & = ("TP"_k + "TN"_k) / ("TP"_k + "TN"_k + "FP"_k + "FN"_k) \
  P_k & = "TP"_k / ("TP"_k + "FP"_k) \
  R_k & = "TP"_k / ("TP"_k + "FN"_k) \
  F_k & = (2 P_k R_k) / (P_k + R_k)
$

/ Accuracy: how often is the cat / not-cat decision correct?
/ Precision: when we say _cat_, how often are we right?
/ Recall: out of all cats, how many did we find?
/ F-measure: harmonic mean, trade-off of precision and recall

=== Aggregation over Classes
/ macro-average: compute metric per class, then average $1/K sum_k M_k$ → every *class* equally important
/ micro-average: sum TP, FP, FN over all classes, then apply formula → every *prediction* equally important

Rule of thumb: balanced dataset → micro, imbalanced dataset → macro.

#gc.tip(title: "Practice")[
  - Accuracy is misleading on imbalanced data: with 99 % negatives, always
    predicting _negative_ gives 99 % accuracy and finds nothing.
  - Precision matters when false positives are costly (spam filter deleting real
    mail). Recall matters when false negatives are costly (missed defective
    product, missed disease). F-measure if both matter.
  - Always look at the confusion matrix: it shows _which_ classes get confused.
]

== k-Nearest Neighbors
/ train: memorize all training data and labels, $O(1)$
/ inference: compute distance to all $N$ training samples, return label of the nearest, $O(N)$

Fast training, slow inference (the opposite of what we want in practice).

*Decision boundary*: boundary between two classification regions. With $k = 1$ it is
noisy and sensitive to outliers. Larger $k$ (majority vote of $k$ nearest
neighbors) → smoother boundaries.

#gc.tip(title: "Practice")[
  - *Scale features* (standardize or normalize) first, otherwise the feature with
    the largest range dominates the distance.
  - Use an odd $k$ for binary problems to avoid ties. Small $k$ overfits, large
    $k$ underfits; tune $k$ on the validation set.
  - Common distance metrics: Euclidean (L2), Manhattan (L1).
  - Works poorly on raw high-dimensional data (e.g. image pixels): distances
    become uninformative (curse of dimensionality).
]

== Hyperparameters
Choices about the learning algorithm that are *not learned* from training data, set
before training (kNN: $k$, distance metric). Very problem-dependent → try and compare.

=== Data Splits
- *Bad:* tune on test split → no idea how the model performs on new data.
- *Better:* split into *train / validation / test*. Select hyperparameters on
  validation, report performance on test (used only once at the end).
- *Cross-validation:* split train set into folds, use each fold once as
  validation, select hyperparameters by average performance, report on test.

#figure(
  diagram(
    node-stroke: 0.7pt,
    spacing: 0pt,
    node(
      (0, 0),
      [train (60--80 %)],
      width: 7cm,
      height: 2em,
      fill: blue.lighten(60%),
    ),
    node(
      (1, 0),
      [val (10--20 %)],
      width: 3.2cm,
      height: 2em,
      fill: orange.lighten(50%),
    ),
    node(
      (2, 0),
      [test (10--20 %)],
      width: 3.2cm,
      height: 2em,
      fill: red.lighten(60%),
    ),
  ),
  caption: [Train / validation / test split with typical sizes.],
)

#figure(
  {
    let fold(i, j) = node(
      (i, j),
      if i == j [val] else [fold #(i + 1)],
      width: 1.6cm,
      fill: if i == j { orange.lighten(50%) } else { blue.lighten(60%) },
    )
    diagram(
      node-stroke: 0.7pt,
      spacing: (0pt, 2pt),
      ..range(5).map(j => range(5).map(i => fold(i, j))).flatten(),
      ..range(5).map(j => node(
        (5, j),
        [test],
        width: 1.6cm,
        fill: red.lighten(60%),
      )),
    )
  },
  caption: [5-fold cross-validation: each fold is validation once, test stays untouched.],
)

#gc.tip(title: "Practice")[
  - Typical splits: *70/15/15* or *60/20/20* for small to medium datasets.
    With very large datasets (millions of samples) *98/1/1* is enough: val and
    test only need to be large enough for a reliable estimate.
  - *Shuffle* before splitting; use *stratified* splits so every split has the
    same class proportions (important for imbalanced data).
  - Avoid *data leakage*: correlated samples (same patient, same measurement
    campaign, time series) must not end up in both train and test. Split by
    group or by time.
  - Cross-validation: usually *5 or 10 folds*. Worth it for small datasets; too
    expensive for large models ($k$ trainings per configuration).
  - Retrain on train + val with the chosen hyperparameters before the final test.
]

=== Hyperparameter Search
Testing all combinations is infeasible (slow training, combinatorial explosion,
continuous intervals).

/ grid search: sample each interval uniformly, test all combinations
/ random search: for $j$ iterations, sample randomly from all intervals

#figure(
  {
    let axes = (
      width: 4.5cm,
      height: 4.5cm,
      xlim: (0, 1),
      ylim: (0, 1),
      xaxis: (ticks: none, subticks: none),
      yaxis: (ticks: none, subticks: none),
      xlabel: [important],
      ylabel: [unimportant],
    )
    let grid-pts = range(3)
      .map(i => range(3).map(j => ((i + 0.5) / 3, (j + 0.5) / 3)))
      .flatten()
      .chunks(2)
    let rand-pts = (
      (0.08, 0.62),
      (0.21, 0.15),
      (0.33, 0.88),
      (0.45, 0.41),
      (0.52, 0.07),
      (0.64, 0.71),
      (0.73, 0.29),
      (0.86, 0.93),
      (0.95, 0.48),
    )
    let search(title, pts) = lq.diagram(
      ..axes,
      title: title,
      lq.scatter(pts.map(p => p.at(0)), pts.map(p => p.at(1))),
      lq.scatter(
        pts.map(p => p.at(0)),
        pts.map(p => 0.0),
        mark: "|",
        size: 10pt,
        color: red,
      ),
    )
    grid(
      columns: 2,
      gutter: 2em,
      search([grid search], grid-pts), search([random search], rand-pts),
    )
  },
  caption: [Same budget of 9 trials. Grid search tests only 3 distinct values of
    the important hyperparameter (red ticks), random search tests 9.],
)

#gc.tip(title: "Practice")[
  - Prefer *random search*: for the same budget it tests more distinct values of
    the hyperparameters that actually matter.
  - Sample scale-type parameters (learning rate, regularization) on a
    *logarithmic* scale, e.g. $10^(-5)$ to $10^(-1)$.
  - Go *coarse to fine*: wide search first, then narrow around the best region.
]

== k-Means Clustering
=== Unsupervised Learning
Data often available long before labels. Unsupervised learning extracts structure
from data *without labels*. *Clustering:* group data points by similarity.
Clustering is subjective: what counts as _similar_ (fruit by type vs. by color)?

=== Algorithm
Assumptions: data in Euclidean space, $K$ clusters, points of the same cluster are close.

Chicken-and-egg: known assignments → centers easy; known centers → assignments
easy. So start randomly and alternate:

#figure(
  diagram(
    ..diagram-style,
    spacing: (2.5em, 1.5em),
    node((0, 0), [random\ initial centers], name: <init>),
    node((1, 0), [*assignment*\ point → closest center], name: <assign>),
    node((2, 0), [*refitting*\ center → mean of its points], name: <refit>),
    node(
      (2, 1),
      [assignments\ changed?],
      name: <check>,
      shape: shapes.diamond,
      fill: orange.lighten(50%),
    ),
    node((3, 1), [converged], name: <done>, fill: green.lighten(50%)),
    edge(<init>, <assign>, "-|>"),
    edge(<assign>, <refit>, "-|>"),
    edge(<refit>, <check>, "-|>"),
    edge(<check>, (1, 1), <assign>, "-|>", label: [yes], label-pos: 0.3),
    edge(<check>, <done>, "-|>", label: [no]),
  ),
  caption: [k-means: alternate assignment and refitting until assignments are stable.],
)

=== Objective
Minimize sum of squared distances of points $x^((n))$ to their assigned centers $m_k$:
$
  min_(m, r) J(m, r) = min_(m, r) sum_(n=1)^N sum_(k=1)^K r_k^((n)) norm(m_k - x^((n)))^2
$
with $r_k^((n)) in {0, 1}$ and $sum_k r_k^((n)) = 1$ (each point in exactly one cluster).

=== Convergence
- Both steps can only decrease $J$ → algorithm always converges
- $J$ is *not convex* → may end in a *local minimum*, result depends on initialization

#gc.tip(title: "Practice")[
  - *Scale features* first, k-means is distance-based like kNN.
  - Run several times with different random initializations and keep the
    result with the lowest $J$ (scikit-learn: `n_init`). Smarter init:
    *k-means++* spreads the initial centers apart.
  - Choose $K$ with the *elbow method*: plot $J$ over $K$, pick the $K$ where
    the curve flattens. $J$ always decreases with more clusters, so never pick
    the minimum (see @elbow).
  - Works best for compact, roughly round clusters of similar size; sensitive to
    outliers (they pull the mean).
]

#figure(
  lq.diagram(
    width: 7cm,
    height: 4cm,
    xlabel: [number of clusters $K$],
    ylabel: [$J$],
    yaxis: (ticks: none, subticks: none),
    xaxis: (subticks: none),
    lq.plot(
      range(1, 9),
      (100, 52, 21, 17, 14.5, 12.5, 11, 10),
    ),
    lq.scatter((3,), (21,), size: 12pt, color: red),
  ),
  caption: [Elbow method (schematic): $J$ drops fast until $K = 3$, then
    flattens → choose $K = 3$.],
) <elbow>
