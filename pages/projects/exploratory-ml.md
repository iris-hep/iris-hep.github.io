---
permalink: /projects/exploratory-ml.html
layout: project
title: exploratory-ml
shortname: exploratory-ml
pagetype: project
image: images/RMP-cover-image-thematic-bright-blue.png
logowidth: 30%
blurb: Analysis Reinterpretation
maturity: Development
maturity-note:
focus-area:
- as
- ia
team:
 - cranmer
 - SebastianMacaluso
 - pharris
 - p_calafiura
 - msneubauer
 - latompkins
 - johannbrehmer
 - irinaespejo
 - mityinzer
---


IRIS-HEP has been established to meet the software and computing challenges of the experimental particle physics community. In order to meet the challenges of the HL-LHC, IRIS-HEP researchers are engaged in various exploratory projects. Some of these emerge from previous targeted research or as a means to engage the broader scientific community.
IRIS-HEP is an excellent example of use-inspired research, and the products of that research is often applicable to other domains. Similarly, IRIS-HEP is embracing the NSF theme of convergence as we must bring together developments in computer science, data science, and statistics to meet the demands of the LHC. Many of these projects have [impact beyond high-energy physics](/impact-beyond-hep.html)


---


<div class="row">
 <div class="col-4">
   <a href="/covid-19">
   <img width="100%" src="/assets/images/protein-tori.png" alt="Card image cap">
   </a>
 </div>
 <div class="col-8">
  <h3>Proteins and Robotics </h3>
In collaboration with researchers at DeepMind and MIT, Kyle Cranmer use machine leaning to describe data that is restricted to certain shapes because of geometric constraints. This type of structure appears in <a href="https://doi.org/10.1073/pnas.0801715105">protein structure</a>, robotics, geology, <a href="https://arxiv.org/abs/2003.06413">nuclear physics</a>, and high energy particle physics. Read the paper:
<a href="https://arxiv.org/abs/2002.02428"> aXiv:2002.02428</a>. (Protein figure from Boomsma <a href="https://doi.org/10.1073/pnas.0801715105">Boosma, PNAS.</a>)
)
 </div>
</div>


---

<div class="row">
 <div class="col-4">
<img src="/assets/images/Quantum-inference-explainer.001.png" width="100%" >
<!--
<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Very happy to have this out!<br>&quot;Inferring the quantum density matrix with machine learning&quot;<br>together with Siavash Golkar and Duccio Pappadopulo<br>* Quantum Maximum Likelihood <br>* Quantum Variational Inference<br>* Quantum Flows<a href="https://t.co/BrIKmFK5c7">https://t.co/BrIKmFK5c7</a><a href="https://twitter.com/NYUScience?ref_src=twsrc%5Etfw">@NYUScience</a> <a href="https://twitter.com/NYUDataScience?ref_src=twsrc%5Etfw">@NYUDataScience</a> <a href="https://t.co/lA1KTqr3TK">pic.twitter.com/lA1KTqr3TK</a></p>&mdash; Kyle Cranmer (@KyleCranmer) <a href="https://twitter.com/KyleCranmer/status/1117591853774311424?ref_src=twsrc%5Etfw">April 15, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
-->

 </div>
 <div class="col-8">

<h3>Quantum Information & Spectral Methods</h3>

Machine learning techniques are being used within IRIS-HEP to enable powerful new forms of statistical inference.
Partially supported by IRIS-HEP's exploratory machine learning efforts, Kyle Cranmer and collaborators explored a generalizing those techniques from classical data to quantum systems, which resulted in <a href="https://arxiv.org/abs/1904.05903">this paper</a>.
 The technique also has applications in spectral learning, which has a broad range of applications in signal processing, and has been cited by researchers at DeepMind that developed <a href="https://arxiv.org/abs/1806.02215">Spectral Inference Networks</a>. This work was followed up for quantum information in <a href="https://arxiv.org/abs/1912.11381">Variational Autoregressive Networks and Quantum Circuits</a> by researchers at the Chinese Academy of Sciences.

 </div>
</div>





---

<div class="row">

  <div class="col-4">
    <img src="https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_900/https://godatadriven.com/wp-content/images/fairness-in-ml/training.gif" width="100%" />
 </div>

 <div class="col-8">

  <h3>Algorithmic Fairness, Privacy, and Causality</h3>

  As machine learning becomes increasingly integrated into our modern lives, a major concern is that the outcome of an automated decision making system should not discriminate between subgroups characterized by sensitive attributes such as gender or race. This is the basis of research around "algorithmic fairness". A similar problem appears in the context of particle physics where physicists don't want the outcome to depend on an uncertain quantity.  To address this problem, Gilles Louppe, Michael Kagan, and Kyle Cranmer developed  a technique to train a neural network <a href="https://papers.nips.cc/paper/6699-learning-to-pivot-with-adversarial-networks.pdf">to be independent of one or more attributes</a>. The technique has been applied to or inspired various work on algorithmic fairness including  <a href="https://www.aaai.org/ojs/index.php/AAAI/article/view/4085">"One-Network Adversarial Fairness"</a>. The image to the left is taken from <a href="https://godatadriven.com/blog/towards-fairness-in-ml-with-adversarial-networks/">this nice blog post</a> by Stijn Tonk. In addition, the work has inspired work by researchers at INRIA and UC Berkeley in
  <a href="https://arxiv.org/abs/1905.10214">privacy and encryption</a> as well as research into the
  <a href="https://arxiv.org/abs/1907.02893">correlation-versus-causation dilemma</a>.

 </div>


</div>


---


<div class="row">
 <div class="col-4">
   <img width="100%" src="/assets/images/prob-prog-malaria.png" >
 </div>
 <div class="col-8">

  <h3>Epidemiology </h3>

    IRIS-HEP researchers collaborated with computer scientists at Oxford and NERSC to instrument particle physics simulators with new capabilities. The "Etalumis" project was nominated for best paper at SC’19 (SuperComputing) and has been written about
    <a href="https://phys.org/news/2019-11-etalumis-reverses-simulations-reveal-science.html">here</a> and
    <a href="https://www.nextplatform.com/2020/02/04/using-bayesian-inference-to-reverse-engineer-decades-of-hpc/">here</a>. The <a href="/projects/ppx.html">PPX</a> protocol and pyprob tools developed for those studies have since been applied to epidemiological studies such as <a href="https://arxiv.org/abs/1905.12432">“Hijacking Malaria Simulators with Probabilistic Programming”</a>, (source of image) and are now being applied to COVID19 (see
    <a href="https://arxiv.org/abs/2003.13221">“Planning as inference in epidemiological dynamics models”</a>.

 </div>
</div>

---

<div class="row">
 <div class="col-4">
   <img width="100%" src="/assets/images/trellis.png" >
 </div>
 <div class="col-8">

  <h3>Genomics</h3>

Hierarchical clustering is a common clustering approach for gene expression data. Within particle physics hierarchical clustering appears in the context of jets -- the most copiously produced objects at the Large Hadron Collider. One challenge is that the number of hierarchical clusterings grows very quickly with the number of objects being clustered.
IRIS-HEP researchers Sebastian Macaluso and Kyle Cranmer connected with computer scientists at U. Mass Amherst to extend a clustering algorithm they had developed for the hierarchical case. This algorithm was applied to both particle physics and cancer genomics studies in <a href="https://arxiv.org/abs/2002.11661">Compact Representation of Uncertainty in Hierarchical Clustering</a>.
 </div>
</div>

---


<div class="row">
 <div class="col-4">
   <img width="100%" src="https://upload.wikimedia.org/wikipedia/commons/0/02/Gravitational_lens-full.jpg" > <br />
 </div>
 <div class="col-8">

  <h3>Dark Matter Astrophysics</h3>

  While we know dark matter exists in the universe, we still don't know what it is made of.
  One approach to pinning down the nature of dark matter is through astrophysics. In particular, images of galaxies that are distorted through gravitational lensing can encode subtle hints about the nature of dark matter, but extracting that information from the images is challenging. IRIS-HEP and former DIANA-HEP researchers joined astro-particle physicist Siddharth Mishra-Sharma to apply techniques originally developed for the LHC to this challenging problem in <a href="https://iopscience.iop.org/article/10.3847/1538-4357/ab4c41">Mining for Dark Matter Substructure: Inferring Subhalo Population Properties from Strong Lenses with Machine Learning</a>.

  <img width="80%" src="https://github.com/smsharma/mining-for-substructure-lens/raw/master/figures/live_inference_with_images_reverse_small.gif" >

 </div>
</div>


---

<div class="container">
<div class="row">
 <div class="col-4">

<div class="embed-responsive embed-responsive-9by16">
<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Excited to announce a new paper with Alvaro Sanchez-Gonzalez, Victor Bapst, and <a href="https://twitter.com/PeterWBattaglia?ref_src=twsrc%5Etfw">@PeterWBattaglia</a> (<a href="https://twitter.com/DeepMindAI?ref_src=twsrc%5Etfw">@DeepMindAI</a>) on <br>&quot;Hamiltonian Graph Networks with ODE Integrators&quot;<br>Gives improvements in position &amp; energy accuracy, and zero-shot generalization. <a href="https://t.co/d8VjNaP2k2">https://t.co/d8VjNaP2k2</a> <a href="https://t.co/WgVnrFocGQ">pic.twitter.com/WgVnrFocGQ</a></p>&mdash; Kyle Cranmer (@KyleCranmer) <a href="https://twitter.com/KyleCranmer/status/1178655631999426560?ref_src=twsrc%5Etfw">September 30, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

</div>
 <div class="col-4">

 <h3>Dynamical Systems</h3>

As part of IRIS-HEP's exploratory machine learning efforts, we've developed collaborations with researchers at DeepMind that are interested in modeling physical systems. This research involves finding ways to incorporate various types of domain knowledge into neural networks. For instance, we know many systems are composed of more basic ingredients, or that interactions between those ingredients have some relational structure. Kyle Cranmer joined researchers at DeepMind for work that brought together techniques from physics and neural networks in <a href="https://arxiv.org/abs/1909.12790">Hamiltonian Graph Networks with ODE Integrators</a>. This work has been extended with <a href="https://drive.google.com/file/d/1Ri3RkuqyZ1xhg0QkXqzwfkxUCvn_0YKn/view">fantastic results</a> (see right) on complex simulations of particle systems in <a href="https://arxiv.org/pdf/2002.09405.pdf">Learning to Simulate Complex Physics with Graph Networks</a>.
 </div>


 <div class="col-4">
<div class="embed-responsive embed-responsive-9by16">
<blockquote  class="twitter-tweet"><p lang="en" dir="ltr">Excited to present “Learning to Simulate Complex Physics with Graph Networks”.<a href="https://t.co/y0kkeskLck">https://t.co/y0kkeskLck</a><br><br>Our model can generate realistic simulations, and generalizes to much larger systems and longer trajectories than its training.<br><br>w/ <a href="https://twitter.com/spectralhippo?ref_src=twsrc%5Etfw">@spectralhippo</a> <a href="https://twitter.com/RexYing0923?ref_src=twsrc%5Etfw">@RexYing0923</a> <a href="https://twitter.com/jure?ref_src=twsrc%5Etfw">@jure</a> <a href="https://t.co/fEimZ0LBOJ">pic.twitter.com/fEimZ0LBOJ</a></p>&mdash; Peter Battaglia (@PeterWBattaglia) <a href="https://twitter.com/PeterWBattaglia/status/1237425685766995974?ref_src=twsrc%5Etfw">March 10, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>

<!---
<iframe src="https://drive.google.com/file/d/1Ri3RkuqyZ1xhg0QkXqzwfkxUCvn_0YKn/preview" width="640" height="480"></iframe>

 </div>
-->

</div>
</div>
