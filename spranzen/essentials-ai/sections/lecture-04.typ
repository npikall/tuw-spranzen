/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *

= Linear Models and Optimization
== Parametric Models
k-NN and decision trees need *much memory* (all samples / tree grows with data) and
*predict slowly* (compare to all samples / evaluate many trees).

*Parametric model:* all information for predictions lives in a finite set of parameters
$theta$: $c = f(x, theta)$ with input $x in RR^D$, output $c in RR^C$. Training = find
good $theta$; training data can be discarded afterwards.

Advantages: low memory, fast predictions, interpretable, works well on small data. (Deep
learning models: same idea with millions / billions of parameters.)

== Linear Classifier
Hypothesis: output is a linear combination of the input.
$
  c = f(x, theta) = W x + b, quad theta = (W, b), quad W in RR^(C times D), quad b in RR^C
$

/ row $k$ of $W$: computes the score of class $k$; points in the direction in which that
  score increases. Score $= 0$ along a line (hyperplane) orthogonal to it.
/ column $j$ of $W$: importance of input feature $j$ for each class
/ bias $b_k$: input-independent shift of class score $k$ → shifts the zero-score line

Decision boundaries are *linear* (hyperplanes) → classes must be *linearly separable*.
Hard cases: XOR-like quadrants, rings ($1 <= norm(x)_2 <= 2$), classes with multiple
modes.

== Loss Functions
Score function alone does not say how to choose $W, b$. Two steps:
+ *Loss function* quantifies how good $W, b$ are (low loss = good)
+ *Optimization* updates $W, b$ to minimize the loss

Accuracy is no loss: it is *discrete* → scores $[3, -2, 2, 1]$ and $[9, -2, 2, 1]$ (true
class 1) give same accuracy although the second is clearly better.

Dataset loss = average over examples $(x_i, y_i)_(i=1)^N$:
$
  L = 1/N sum_i L_i (f(x_i, W), y_i)
$

=== Softmax
Turns raw scores (*logits*, unnormalized log-probabilities) into probabilities:
$
  P(Y = k | X = x_i) = e^(s_k) / (sum_j e^(s_j))
$
$exp$ makes values positive ($(-oo, oo) -> (0, oo)$), division makes them sum to 1.
Example: logits $(3.2, 5.1, -1.7) -> (0.13, 0.87, 0.00)$.

=== Cross-Entropy Loss
Entropy = average "surprise" of a random variable: $H(X) = -sum_x p(x) log p(x)$.
Cross-entropy measures dissimilarity of two distributions $p$ (ground truth) and $q$
(prediction); more dissimilar → higher $H$:
$
  H(p, q) = -sum_x p(x) log q(x)
$
One-hot label $y$ → only true class counts: $L_i = -log p_(y_i)$. Example above, true
class 1: $L = -log 0.13$ → high loss. Confident correct prediction ($p = 1.0$) →
$L = 0$.

== Gradient Descent
*Optimization* = find parameters minimizing the loss.
- Random search (random $W$, keep if better): relies on chance, very slow
- Random local steps (random direction, keep if better): still slow
- *Gradient descent:* step in direction of steepest loss decrease

*Gradient* $nabla_W L$: same shape as $W$, entries $partial L \/ partial W_(i j)$.
Points in direction of greatest *increase*; norm = magnitude of increase.

Repeat until convergence (gradient $= 0$ → local minimum):
$
  W^(t+1) = W^t - alpha nabla_W L
$

*Analytical gradient* (calculus, exact) for linear model + softmax + cross-entropy, with
$z = W x + b$, $p_k = "softmax"(z)_k$, $L = -sum_k y_k log p_k$:
$
  (partial L) / (partial W_k) = (p_k - y_k) x
$
Intuition: prediction minus label, scaled by input.

== Hyperparameters
```python
w = initialize_weights()
for t in range(num_steps):
    minibatch = sample_data(data, batch_size)
    dw = compute_gradient(loss_fn, minibatch, w)
    w -= learning_rate * dw
```

/ initialization: not critical for linear softmax classifier → loss is *convex*, every
  local minimum is global. Zeros or small random values both fine.
/ number of steps: too few → not converged; too many → wasted compute. Stop when loss is
  small.
/ learning rate $alpha$: controls step size (raw gradient can be too large → overshoot,
  or too small → barely moves). Too large → no convergence; too small → slow. Problem
  dependent.
/ batch size: full sum over $N$ is expensive → *stochastic gradient descent* (SGD)
  approximates gradient on a *minibatch* (32 / 64 / 128 common). Too small → noisy
  gradients; too large → high compute cost.

#gc.tip(title: "Practice")[
  - Typical learning rates: $10^(-3)$ to $10^(-1)$; try on a log scale and plot the
    training loss: diverging/oscillating → lower $alpha$, flat → raise it.
  - Standardize features before training: gradient descent converges much faster when
    features have similar scale.
  - Subtract $max_j s_j$ from all logits before softmax to avoid overflow (result
    unchanged).
  - One *epoch* = one pass over the whole dataset; shuffle data every epoch.
]
