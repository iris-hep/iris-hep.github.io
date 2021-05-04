---
permalink: /projects/lst.html
layout: project
title: Line-Segment tracking
shortname: lst
pagetype: project
image: logos/lst-graphic.png
blurb: Segment linking tracking for CMS
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

Line-segment tracking aims to exploit the CMS outer tracker geometry to make an inherently parallelizable and acceleratable tracking algorithm.

<div>
<h3>CMS outer tracker geometry</h3>
<br/>
The planned CMS tracker design contains double-layered silicon modules with a gap size of about 2mm (dubbed pT modules) in
the outer tracker. This geometry can be used to reduce occupancy of hits by requiring coincidences of hits between two layers
consistent with a minimum pT threshold.
</div>
<img src="/assets/images/seglink1.png" width="70%" alt="">

<div>
<h3>Approach</h3>
Here we illustrate the segment linking algorithm in the outer tracker. The first graphic shows the creation of mini-doublets from detector hits
and then segments from the mini-doublets. Segments are advantageous for a number of reasons including locality, sharing hits, and being inherently not dependent on the inner
tracker layers. The right-hand figure then shows how track candidates are created from segments. (a non-exhaustive list of possible track candidates are shown).
</div>
<br/>
<img src="/assets/images/seglink2.png" width="90%" alt="">

<div>
<h3>Results</h3>
Good (or poor) linking is then an indicator of a valid track candidate. Geometric variables distinguish good track candidates from unphysical ones. This approach is naturally
parallelizable and vectorizable (quite different from a traditional Kalman-Filter approach). We are developing this algorithm with both CPU and GPU (CUDA) implementations.
</div>
<br/>
<img src="/assets/images/seglink3.png" width="90%" alt="">

