---
permalink: /analysis-grand-challenge.html
layout: challenge-area
short_title: agc
title: Analysis Grand Challenge
---

## Analysis Grand Challenge

The most up-to-date documentation about the Analysis Grand Challenge is located at this website: [https://agc.readthedocs.io/en/latest/](https://agc.readthedocs.io/en/latest/?badge=latest)

The large increase in data volume at the HL-LHC requires rethinking how physicists interact with the data when developing and performing analysis. In addition to raw throughput, it is critical that analysis systems are flexible, easy to use, and have low latency to facilitate the design stages. The Analysis Grand Challenge was designed to span the scope of Analysis Systems focus area, transverse a vertical slice through the tools being developed by the Analysis Systems focus area, and increase intra-Institute connections with DOMA and SSL. The goal is to demonstrate that the analysis system can not only cope with the increased data volume, but can also deliver enhanced functionality compared to the analysis systems used at the LHC today. The challenge is formulated as a user story with assumptions, and acceptance criteria.

The Analysis Grand Challenge includes both integration of software components for analyzing the data as well as the deployment of the analysis software at analysis facilities. The vertical slice implements the functionality needed for a prototypical analysis use case with a moderately complex analysis with multiple event selection requirements, observables to be histogrammed, and systematic uncertainties that must be taken into account. The image below gives an overview of the software tools that must be integrated for this vertical slice.

{% include figure.html
  alt="Analysis Systems Scope"
  file="assets/images/cabinetry-vertical-slice.png"
  class="center"
  figure-style="width:100%"
%}


In addition, the challenge incorporates enhanced functionality relative to the  the analysis systems used at the LHC today
- End-to-end analysis optimization including systematics on a realistically sized HL-LHC (∼200 TB) end-user analysis dataset
- Analysis Preservation & Reinterpretation: The ability to preserve the optimized analysis (in git repositories, docker images, workflow components, etc.), reproduce results, and reinterpret the analysis with a new signal hypothesis.


The inclusion of differentiable programming, a relatively new concept in HEP, into the challenge carries some risks. We note however that it has the potential to move the field forward in several important ways:

- Intellectual Leadership: It is a modern paradigm growing and abstracting from the success of deep learning, and a more natural fit to HEP than replacing everything with machine learning.
- Increased Functionality: We will have more sensitive analyses. Differentiable analysis systems
would accelerate and improve essentially all fitting / tuning / optimization tasks. It also facilitates propagation of uncertainty in a more powerful way and paves the way to hybrid systems that fuse traditional approaches and machine learning more seamlessly.
- Connection with Industry: This has been an effective conduit to connections with Google (Jax and Tensorflow teams) and the pytorch community.
- Foster Innovation: Differentiable programming opens up a new range of possibilities for performing analysis in physics at the HL-LHC.
- Training & Workforce development: Young people entering the job market with Machine Learning and Differentiable Programming skills will have a unique and valuable skill set. Differentiable programming will force physicists to take an end-to-end approach to problem solving, a skill that is already looked for both within and outside HEP.

This challenge involves milestones and deliverables in DOMA, Analysis Systems, and SSL. Year 3 will include a Blueprint and other meetings focused on scoping of the target analysis, the needed capabilities of an analysis system, and roadmaps for how the components will interact. Year 4 will include initial benchmarking of analysis system components and integrations, and we aim to execute the analysis grand challenge in Year 5.


The video below provides an overview of the tools being developed by the Analysis Systems focus area, the deployment of those tools on analysis facilities, and the integration of these efforts in the context of the Analysis Grand Challenge.

<iframe width="560" height="315" src="https://www.youtube.com/embed/nDpk0tYOVlc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
