---
permalink: /projects/ml4jets.html
layout: project
title: Machine Learning for jets
shortname: ml4jets
pagetype: project
image: logos/ml4jets-logo.png
logowidth: 80%
blurb: Machine learning for jets
focus-area: ia
team:
 - cranmer
 - SebastianMacaluso
 - irinaespejo
---

Machine Learning is having a major impact in jet physics. It is empowering powerful taggers for boosted (W, Z, H, top) jets as well as flavor tagging.




---

<div class="row">
 <div class="col-4">
    <img src="/assets/logos/ml4jets-logo.png" width="100%" alt="top tagging table" />
 </div>
 <div class="col-8">

  <h3>TreeNiN </h3>
The QCD-aware recursive neural networks devleoped as part of DIANA/HEP (<a href="https://arxiv.org/abs/1702.00748">Louppe et al. 2017</a> which leverage an analogy to natural language processing were extended to include a network-in-network. The TreeNiN method (in the table below), achieves excellent performance with orders of magnitude fewer parameters than the other top performing techniques. This pytorch implementation can be found in <a href="https://github.com/diana-hep/TreeNiN">this repository</a>

 </div>
</div>

---

<div class="row">
 <div class="col-4">
    <img src="/assets/images/top-tagging.png" width="100%" alt="top tagging table" />
 </div>
 <div class="col-8">

  <h3>Top Tagging Comparison </h3>
At  <a href="https://indico.cern.ch/event/745718/">ML4Jets 2018</a> a top-tagging comparison was initaited, resulting in <a href="http://inspirehep.net/record/1722059">``The Machine Learning Landscape of Top Taggers''</a>. The table  shows a comparison of the methods.



Irina Espejo, Sebastian Macaluso, and Heiko Mueller are using docker containers, yadage workflows, and <a href="http://www.reana.io">REANA</a> to automate and streamline such benchmark studies.

 </div>
</div>

---

<div class="row">
 <div class="col-4">
    <img src="/assets/images/posts/20200117-ml4jets-workshop-group-photo.jpeg" width="100%" alt="ml4jets workshop" />
 </div>
 <div class="col-8">

  <h3>ML4Jets workshop</h3>
NYU hosted <a href="/2020/01/17/ml4jets-workshop.html">ML4Jets 2020</a> focusing on this topic, which was the third in the series of workshops, following <a href="https://indico.cern.ch/event/745718/">ML4Jets 2018</a> at FermiLab and <a href="https://indico.physics.lbl.gov/indico/event/546/">ML4Jets 2017</a> at Berkeley.

 </div>
</div>

---

<div class="row">
 <div class="col-4">
     <img src="/assets/logos/ginkgo.png" width="100%" alt="ginkgo logo" />
 </div>
 <div class="col-8">

  <h3>Ginkgo: growing convergent research</h3>
More recenlty, Sebastian Macaluso and Kyle Cranmer have worked to reframe many problems in jet physics in statistical terms and connect the parton shower to latent variable models. In order to ease collaboration with computer scientists, they have developed <a href="https://github.com/SebastianMacaluso/ToyJetsShower">Ginkgo</a>, a simplified parton shower model written in <a href="http://pyro.ai">pyro</a>.

 </div>
</div>

---

<div class="row">
 <div class="col-4">
    <img src="/assets/images/visualize_tree.png" width="100%" alt="exampple visualization" />
 </div>
 <div class="col-8">

  <h3>Visualizing Jet Clustering</h3>
In order to aid research into jet physics, Sebastian Macaluso, Kyle Cranmer, and Duccio Pappadopulo have developepd new visualization tools to compare various jet clustering algorithms. See the <a href="https://github.com/SebastianMacaluso/VisualizeBinaryTrees">VisualizeBinaryTrees</a> repository in GitHub.

 </div>
</div>

---

<div class="row">
 <div class="col-4">
   <img width="100%" src="/assets/images/trellis.png" />
 </div>
 <div class="col-8">

  <h3>Hierarchical Clustering: use-inspired research</h3>

Hierarchical clustering is a common clustering approach for gene expression data. Within particle physics hierarchical clusterirng appears in the context of jets -- the most copiously produced objects at the Large Hadron Collider. One challenge is that the number of hierarchical clusterings grows very quickly with the number of objects being clustered.
IRIS-HEP researchers Sebastian Macaluso and Kyle Cranmer connected with computer scientists at U. Mass Amherst to extend a clustering algorithm they had developed for the hierarchical case. This algorithm was applied to both particle physics and cancer genomics studies in <a href="https://arxiv.org/abs/2002.11661">Compact Representation of Uncertainty in Hierarchical Clustering</a>.
 </div>
</div>


[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/diana-hep/TreeNiN)
[![DOI](https://zenodo.org/badge/160135404.svg)](https://zenodo.org/badge/latestdoi/160135404)

[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/SebastianMacaluso/ToyJetsShower).
