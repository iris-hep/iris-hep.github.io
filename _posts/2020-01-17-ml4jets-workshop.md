---
layout: irispost
title: Machine Learning for Jet Physics Workshop (ML4Jets)
author: Kyle Cranmer and Robert Tuck
image: /assets/images/posts/20200117-ml4jets-workshop-group-photo.jpeg
image-caption: "Participants in ML4Jets Workshop. Photo Credit: Kyle Cranmer"
postbanner: /assets/images/posts/20200117-ml4jets-workshop-room.png
summary: "NYU Hosted the third in a series of workshops focusing on Machine Learning for Jet Physics from January 15-17, 2020. The [event](https://indico.cern.ch/event/809820/overview)
drew more than 100 participants including experimental physicists, theoretical physicists, computer scientists, and applied mathematicians. IRIS-HEP members Kyle Cranmer and Sebastian Macaluso were the local organizers."
---

NYU Hosted the third in a series of workshops focusing on Machine Learning for Jet Physics from January 15-17, 2020. The [event](https://indico.cern.ch/event/809820/overview)
drew more than 100 participants including experimental physicists, theoretical physicists, computer scientists, and applied mathematicians. IRIS-HEP members Kyle Cranmer and Sebastian Macaluso were the local organizers.



Jets are sprays of particles that result from the production of quarks and gluons, and they are copiously produced at the LHC. Essentially every collision at the LHC has one or more jets. Many searches for new physics must either fight against
a huge background caused by jets or try to uncover the subtle signs for new physics hiding inside the jets. Because jets are composed of many particles, they are complicated objects to analyze.



Machine learning techniques offer [great promise for jet physics](https://iris-hep.org/projects/ml4jets.html),
which has become one of the most active areas for deep learning research at the LHC. Initial work in deep learning for jet physics was based on an analogy with images. Later, techniques built on an analogy with natural language. Shortly after that graph neural
networks were brought to bear on these challenging problems. The particular considerations of jet physics have motivated a variety of new architectures, and these challenges have inspired a number of collaborations with machine learning researchers. Several
of these approaches were compared in the paper [The Machine Learning Landscape of Top Taggers](http://inspirehep.net/record/1722059),
which considered a specific benchmark dataset. On Friday, Heiko Mueller and Sebastian Macaluso (of the NSF-funded projects IRIS-HEP, DIANA-HEP, and SCAILFIN) presented a tool called ROB (Reproducible Open Benchmarks) aimed at streamlining and automating these
types of benchmarking efforts.




{% include figure.html
    file="/assets/images/posts/20200117-ml4jets-workshop-Gilles-Louppe.png"
    alt="Gilles Louppe (University of Liège)"
    caption="[Gilles Louppe](https://glouppe.github.io), Associate Professor of artificial intellegence at the University of Liège (Belgium) describes modern deep learning by analogy with lego building blocks.  Photo Credit: Kyle Cranmer (NYU)."
%}

The first day included introductory talks by Maxim Perelstein from a theoretical physicist's perspective, Alison Lister from an experimental perspective, and [Gilles Louppe](https://glouppe.github.io),
a computer scientist that has collaborated with LHC physicists.

"This year we have really seen an growth in the scope of topics being discussed at ML4Jets," explained Kyle Cranmer. Generative models such as GANs were a hot topic. In addition, we heard from both physicists and mathematicians about Optimal Transport,
which provides a natural way of comparing how similar two jets are. Connections were made to topic modelling, hierarchical clustering, variational inference, likelihood-free inference, domain adaptation, unfolding, and robustness. In addition, an entire session
was devoted to a challenge dubbed the LHC Olympics, which focused on anomaly detection. A number of techniques have been developed recently to try to uncover new physics from the data. This is a fresh approach to the LHC data analysis that complements the
highly optimized searches for specific theories.



The material from the workshop is available online in an [Indico agenda](https://indico.cern.ch/event/809820/overview)

<br clear="all">

{% include figure.html
    file="/assets/images/posts/20200117-ml4jets-workshop-Kyunghyun-Cho.png"
    alt="Kyunghyun Cho (NYU)"
    caption="[Kyunghyun Cho](http://www.kyunghyuncho.me) Associate Professor of Computer Science and Data Science at NYU describes recent progress in machine translation and it's potential for physics applications.
  Photo Credit: Kyle Cranmer (NYU)."
    class="center"
%}

{% include figure.html
    file="/assets/images/posts/20200117-ml4jets-workshop-Jonathan-Niles-Weed.png"
    alt="Jonathan Niles-Weed (NYU)"
    caption=" [Jonathan Niles-Weed](https://www.jonathannilesweed.com),  Assistant Professor of Mathematics and Data Science at NYU describes how Optimal Transport can be used to better understand structured data.
  Photo Credit: Kyle Cranmer (NYU)."
    class="center"
%}
