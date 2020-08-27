KDD2020: Casual Inference Meets Machine Learning
================

## [Overview](https://www.youtube.com/watch?time_continue=39&v=g_2dMQCU0zo&feature=emb_logo)

**Causality** is also referred to as “*causation*” or “*cause and
effect*”.

### Correlation does not imply causation

For two correlated events A and B, the **possible relations** might be:

1.  A causes B
2.  B causes A
3.  A and B are consequences of a common cause, but do not cause each
    other

### Causal Inference and Causal Discovery

  - **Causal Discovery** is identifying relationships from large
    quantities of data through computational methods. The
  - **Causal Inference** is the process of drawing a conclusion about a
    causal connection based on the conditions of the occurrence of an
    effect.
      - Experimental Study (e.g., randomized controlled trials)
      - Observational Study (e.g., potential outcome framework)

### Experimental Study

  - Randomized Control Trial (RCT)
  - Assignment to control/treatment is random
  - Study the effect of a treatment (e.g., design A/B) to the outcome
    (e.g., conversion)
  - Considered the **Gold-standard** for studying causal relationships
  - Expensive and time consuming

### Observational Study

  - Unlike RCTs, treatment assignment in observational study is NOT
    random
  - Because it is not random, approaches must remove bias from data,
    emulating the RCT.
  - Popular Approaches: graphical causal models, potential outcome
    framework
  - Simple, efficient
  - Potential to leverage large datasets

### Tutorial Objectives

Causal Inference is an active research area with many topics, this
tutorial focus on the **potential outcome framework** in **observational
study**. Machine learning could assist causal inference at different
stages, in this tutorial we focus on how to design **representation
learning** approaches for causal inference. Relevant resources include:

  - A Survey On Causal Inference (02/2020)
    [arXiv:2002.02770](https://arxiv.org/abs/2002.02770)
  - Tutorial Website <http://kdd2020tutorial.thumedialab.com>

## Tutors

  - Peng Cui (Tsinghua University);
  - Zheyan Shen(Tsinghua University);
  - Sheng Li (University of Georgia);
  - Liuyi Yao (University at Buffalo, USA);
  - Yaliang Li (Alibaba Group);
  - Zhixuan Chu (University of Georgia );
  - Jing Gao (University at Buffalo)

## Resources

  - [Session 1 of 6:
    Overview](https://www.youtube.com/watch?time_continue=39&v=g_2dMQCU0zo&feature=emb_logo)
  - [Session 2 of 6: Causal Inference: Background and
    Challenges](https://www.youtube.com/watch?v=I6yi_wd4r94)
  - [Session 3 of 6: Classical Causal Inference
    Methods](https://www.youtube.com/watch?time_continue=4&v=f2dvVpDxD3A&feature=emb_logo)
  - [Session 4 of 6: Subspace Learning For Causal
    Inference](https://www.youtube.com/watch?time_continue=1&v=J4B00WZH5A0&feature=emb_logo)
  - [Session 5 of 6: Deep Representation Learning For Causal
    Inference](https://www.youtube.com/watch?v=_DwdpmZkY1M&feature=emb_logo)
  - [Session 6 of 6: Applications and Potential
    Directions](https://www.youtube.com/watch?time_continue=1&v=roVS6LQS6tk&feature=emb_logo)
  - A Survey On Causal Inference (02/2020)
    [arXiv:2002.02770](https://arxiv.org/abs/2002.02770)
  - Tutorial Website <http://kdd2020tutrorial.thumedialab.com/>
