---
permalink: /projects/mkfit.html
layout: project
title: mkFit
shortname: mkfit
pagetype: project
image: logos/mkfit-graphic.png
blurb: Modernizing Kalman filter tracking for CMS
team:
 - IHateLinus
 - pwittich
 - pelmer
 - srlantz
 - tresreid
 - dan131riley
 - Leonardo Giannini
 - slava77
 - mmasciov
 - osschar
 - beiwang2003
 - Giuseppe Cerati
 - Matti Kortelainen
 - Allison Reinsvold Hall
 - Brian Gravelle
 - Boyana Norris
focus-area: ia

---


MkFit aims to develop fully vectorized and parallelized tracking algorithms based on the Kalman Filter for use in a collider experiment.
For a more complete account, [see the main project page](http://trackreco.github.io/).

<br/>

<div class="row">
 <div class="col-4">
  <h3>Track building results</h3>
Efficiency of the mkFit (red) and nominal CMSSW (blue) track building algorithms as a function of the track eta (left) and pT (right).
The efficiency with respect to track eta is calculated for tracks with pT > 0.9 GeV. The efficiency is defined as the fraction of
simulated tracks that are matched to at least one reconstructed track; only simulated tracks matched to a seed are considered.
Sample used: first CMS offline tracking iteration for tt ̄ events with an average pileup of 50.
 </div>
 <div class="col-8">
     <img src="/assets/images/mkfit2.png" width="100%" alt="mkfit logo" />
 </div>
</div>

<br/>

<div>
<h3>Matrixplex</h3>
Matriplex memory layout uses a matrix-major representation optimized for loading vector registers for SIMD operations on a set of small matrices, using the native vector-unit width on processors with vector units. Matriplex includes a code generator for defining optimized matrix operations, with support for symmetric matrices and on-the-fly matrix transposition. Patterns of elements that are known by construction to be zero or one can be specified, and the resulting code will be optimized to eliminate unnecessary register loads and arithmetic operations. The generated code can be either standard C++ or macros that map to architecture-specific intrinsic functions. Matriplex structures and auto-generated code are used for all KF-related operations on tracks and hits, and in general for all matrix operations.
</div>
<img src="/assets/images/mkfit1.png" width="100%" alt="">

<br/>

<div class="row">
 <div class="col-8">
  <h3>Compute resource savings</h3>
Comparison of the single-thread time to run mkFit as an external within the CMSSW framework (red) to the time to run the standard first iteration of offline tracking in CMSSW (blue). Note that mkFit is used as a replacement for the building step only. mkFit achieves a speedup >6x over CMSSW in the track building stage. Time measured on SKL-SP using tt ̄ events with an average pileup of 50.
</div>
 <div class="col-4">
     <img src="/assets/images/mkfit3.png" width="100%" alt="mkfit logo" />
 </div>
</div>

<br/>



