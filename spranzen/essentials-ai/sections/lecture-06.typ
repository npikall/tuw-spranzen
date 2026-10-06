/*
 * Copyright (C) 2026 npikall.
 *
 * This is free software: you can redistribute it and/or modify
 * it under the terms of the MIT License; see the LICENSE file for details.
 */

#import "@local/spranzen:0.1.0": *
#import "@preview/fletcher:0.5.8": shapes

= Convolutional Neural Networks
== Convolution
MLP on a flattened image ignores spatial structure: translating the image moves pixels to
other weights → prediction changes. Need an operation that *preserves structure*.

*Convolution:* slide a filter (kernel) over the image, compute dot products → *feature
map*. The kernel values are the learnable parameters.
$
  g(i, j) = sum_(k, l) f(i - k, j - l) h(k, l)
$

Layer shapes: input $C_"in" times W times H$, filter $C_"in" times C_"out" times K_w
times K_h$, bias $C_"out"$, output $C_"out" times W' times H'$.

- Stacked convolutions = one convolution (linear) → put *ReLU* in between
- Same idea for 1D (sound, text: $L times C$) and 3D data (CT scans: $C times H times W
  times D$)
- CNNs beat MLPs and linear models on images (e.g. CIFAR-10)

== Kernel Size and Padding
/ kernel size: size of the detectable features (3×3, 5×5, 7×7)
/ receptive field: input region a feature can see. Each layer adds $K - 1$; $L$ layers →
  $1 + L (K - 1)$
/ padding $P$: add border so resolution is kept; $P = (K - 1) \/ 2$ → output size = input
  size
/ 1×1 conv: linear layer over channels, combines features per pixel independently

Output size with input $W$, kernel $K$, padding $P$, stride $S$:
$
  W' = (W - K + 2 P) / S + 1
$

== Pooling
Large receptive fields need many convolutions; high-res images need huge memory (4k image,
128 features, batch 32 → \~8 GB per layer). *Downsampling* increases effective receptive
field and reduces memory:
/ max / average pooling: fixed operation (e.g. 2×2, stride 2), *no learnable parameters*
/ strided convolution: learned downsampling

Classic architecture: `[Conv, ReLU, Pool] × N → Flatten → [FC, ReLU] × N → FC`. Early
layers learn low-level features (edges), later layers high-level features.

#figure(
  table(
    columns: 3,
    align: (left, left, left),
    table.header([*Layer*], [*Output size*], [*Weight size*]),
    [Input], [$1 times 32 times 32$], [],
    [Conv ($C_"out" = 16$, $K = 5$, $P = 2$, $S = 1$)],
    [$16 times 32 times 32$],
    [$16 times 1 times 5 times 5$],

    [ReLU], [$16 times 32 times 32$], [],
    [MaxPool ($K = 2$, $S = 2$)], [$16 times 16 times 16$], [],
    [Conv ($C_"out" = 32$, $K = 5$, $P = 2$, $S = 1$)],
    [$32 times 16 times 16$],
    [$32 times 16 times 5 times 5$],

    [ReLU], [$32 times 16 times 16$], [],
    [MaxPool ($K = 2$, $S = 2$)], [$32 times 8 times 8$], [],
    [Flatten], [$2048$], [],
    [Linear], [$512$], [$2048 times 512$],
    [ReLU], [$512$], [],
    [Linear], [$10$], [$512 times 10$],
  ),
  caption: [Example CNN. $P = (K - 1) \/ 2$ keeps resolution, each pooling halves it.],
)

== Deep Architectures
/ input normalization: features with large values dominate; all-negative inputs → *dead
  ReLU neurons*. Normalize the inputs.
/ normalization layers: distribution of hidden layer inputs shifts during training →
  normalize $hat(z) = (x - E[x]) \/ sqrt("Var"[x])$, then learnable scale/shift
  $hat(x) = gamma hat(z) + beta$
  - *Batch norm:* statistics over the batch (training), saved values (testing); noisy
    for small batches
  - *Layer norm:* statistics per sample over its features
  - Higher learning rates, faster convergence, deeper models, acts as regularization
/ ResNet: 56-layer net worse than 20-layer net even on *training* data → underfitting,
  an optimization problem (identity is hard to learn). *Residual block* $H(x) = F(x) + x$:
  weights $= 0$ → identity. Stack of blocks with two 3×3 convs. Residual connections are
  standard in nearly all modern architectures (incl. LLMs).

#figure(
  diagram(
    ..diagram-style,
    spacing: (1.5em, 1.5em),
    node((0, 0), [$x$], name: <x>),
    node((1, 0), [Conv], name: <c1>),
    node((2, 0), [ReLU], name: <r>),
    node((3, 0), [Conv], name: <c2>),
    node(
      (4, 0),
      [$+$],
      name: <add>,
      shape: shapes.circle,
      fill: orange.lighten(50%),
    ),
    node((5, 0), [$H(x)$], name: <h>),
    edge(<x>, <c1>, "-|>"),
    edge(<c1>, <r>, "-|>"),
    edge(<r>, <c2>, "-|>"),
    edge(<c2>, <add>, "-|>", label: [$F(x)$]),
    edge(
      <x>,
      <add>,
      "-|>",
      bend: -40deg,
      label: [identity shortcut],
      label-side: right,
    ),
    edge(<add>, <h>, "-|>"),
  ),
  caption: [Residual block $H(x) = F(x) + x$. Conv weights $= 0$ → identity.],
)

== Image Segmentation
Label *every pixel* with a class.
- Sliding window (classify crop around each pixel): very slow, no feature sharing
- *Fully convolutional network:* convs only, per-pixel cross-entropy. Full resolution is
  expensive and has small receptive field → *encoder–decoder*: downsample (pooling,
  strided conv), then upsample (*unpooling*: nearest neighbor, bilinear interpolation)
- *U-Net:* skip connections from encoder to decoder → reuse fine details, better gradient
  flow
