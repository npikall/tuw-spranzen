/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/fletcher:0.5.8": shapes

#let grad(x) = text(fill: red, $#x$)

= Basics of Neural Networks
== Feature Transform
Linear classifiers need linearly separable classes. A *feature transform* (e.g.
Cartesian → polar $(r, theta)$ for rings) makes them separable: linear classifier in
feature space = nonlinear classifier in original space.

/ ML pipeline: input → *hand-crafted* features → ML algorithm (k-NN, tree, linear).
  Manual feature engineering is time-consuming, biased, task-specific, scales poorly.
/ DL pipeline: input → *learned* features (neural network) → linear model.

== Multi-Layer Perceptron (MLP)
Feature transform = linear transformation + nonlinear *activation function* $sigma$,
followed by a linear model for the class scores:
$
  h(x) = sigma(W_1 x + b_1), quad f(x) = W_2 h(x) + b_2
$
*ReLU:* $sigma(x) = max(0, x)$; positives stay linear, negatives become 0.

Without $sigma$: $W_2 (W_1 x + b_1) + b_2 = W_3 x + b_3$ → again just a linear classifier.

/ neuron: computes $sigma(sum_i w_i x_i)$ (inspired by biological neurons)
/ deep network: stack layers $h_l = sigma(W_l h_(l-1) + b_l)$, final layer linear
/ complexity: more layers / more neurons → more complex model (problem dependent)

== Backpropagation
Analytical gradients of deep models are tedious, not modular, infeasible. Instead build
a *computational graph* (small connected operations) and apply the *chain rule*:
+ *Forward pass:* compute all node outputs
+ *Backward pass:* from the loss back, per node
  $
    "downstream" = "local gradient" times "upstream", quad (partial L) / (partial x) = (partial z) / (partial x) (partial L) / (partial z)
  $

#figure(
  diagram(
    ..diagram-style,
    spacing: (4em, 1.2em),
    node((0, 0), [$x$], name: <dn1>),
    node((0, 1), [$y$], name: <dn2>),
    node(
      (1, 0.5),
      [$partial z \/ partial x$\ $partial z \/ partial y$],
      name: <z>,
      shape: shapes.circle,
      fill: orange.lighten(50%),
    ),
    node((2, 0.5), [$L$], name: <L>),
    edge(
      <dn1>,
      <z>,
      "-|>",
      label: grad($(partial L) / (partial x)$),
      label-side: left,
    ),
    edge(
      <dn2>,
      <z>,
      "-|>",
      label: grad($(partial L) / (partial y)$),
      label-side: right,
    ),
    edge(<z>, <L>, "-|>", label: grad($(partial L) / (partial z)$)),
  ),
  caption: [One node $z$: downstream gradients (left) = local gradients (node) $times$
    upstream gradient (right).],
)

Example $f = (x + y) z$, $x = -2, y = 5, z = -4$: $q = 3$, $f = -12$;
$partial f \/ partial z = q = 3$, $partial f \/ partial x = partial f \/ partial y = z = -4$.

#figure(
  diagram(
    ..diagram-style,
    spacing: (4em, 1.2em),
    node((0, 0), [$x = -2$], name: <x>),
    node((0, 1), [$y = 5$], name: <y>),
    node((0, 2), [$z = -4$], name: <z>),
    node((1, 0.5), [$+$\ $q = 3$], name: <q>, shape: shapes.circle),
    node(
      (2, 1.25),
      [$times$\ $f = -12$],
      name: <f>,
      shape: shapes.circle,
      fill: orange.lighten(50%),
    ),
    node((3, 1.25), [out], name: <out>, stroke: none),
    edge(<x>, <q>, "-|>", label: grad(-4), label-side: left),
    edge(<y>, <q>, "-|>", label: grad(-4), label-side: right),
    edge(<q>, <f>, "-|>", label: grad(-4), label-side: left),
    edge(<z>, <f>, "-|>", label: grad(3), label-side: right),
    edge(<f>, <out>, "-|>", label: grad(1)),
  ),
  caption: [Forward pass: values in the nodes. Backward pass: gradients
    #grad($partial f \/ partial dot$) on the edges.],
)

ML frameworks implement this automatically. Drawback: all intermediate results must be
stored during the forward pass → *high memory*.

== SGD + Momentum
Problems of plain SGD: oscillation when loss changes fast in one direction and slow in
another; noisy gradients (small batches); non-convex loss with *local minima* and
*saddle points* (zero gradient).

Momentum accumulates gradients into a *velocity* $v$:
$
  v_(t+1) = rho v_t + nabla_W L, quad W^(t+1) = W^t - alpha v_(t+1)
$
New hyperparameter $rho$, typically $0.9$ to $0.99$.

== Regularization
*Overfitting:* model memorizes training data, does not generalize. Regularization forces
general rules:
- more training data, bagging, smaller model (fewer features / layers)
/ data augmentation: create modified copies of training data (crop, mirror,
  brightness/contrast) with the same label
/ weight decay: large weights → sensitive to small input changes / outliers; shrink
  weights every step: $W^(t+1) = W^t - alpha v_(t+1) - lambda W^t$
/ dropout: during training randomly turn off neurons with probability $p$ → no reliance
  on few features. Rescale by $1 \/ (1 - p)$ during training so expected values match at
  test time (no dropout at test time).

== Hyperparameters
/ weight initialization: non-convex loss → init matters. Plain normal distribution →
  vanishing/exploding gradients. *Kaiming init* (for ReLU): normal with std
  $sqrt(2 \/ D_"in")$, $D_"in"$ = number of layer inputs.
/ learning rate: high → fast but misses good minima; low → slow but better minima.
  Start high, decrease with a *scheduler*:
  - *step:* scale by $r$ at fixed epochs
  - *cosine:* $alpha_t = 1/2 alpha_0 (1 + cos(t pi \/ T))$
