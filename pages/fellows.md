---
permalink: /fellows.html
layout: default
title: IRIS/HEP Fellows Program
---

# IRIS-HEP Fellows Program 

  People are the key to successful software. IRIS-HEP aims to promote the 
development of advanced research software skills by providing opportunities 
for undergraduate and graduate students to connect with mentors within the
larger HEP and Computational/Data Science community. At the same time, we aim 
to promote software as a collaborative activity and encourage collaborations 
which engage individuals in ways that maximize their potential and their 
potential impact on the community.

  In order to accomplish these goals, IRIS-HEP has created a Fellow program.
IRIS-HEP Fellows will spend 2-3 months working closely with a mentor on an
R&D topic relevant to the Institute. Possible software R&D areas include:

  * [Analysis Systems](/as.html)
  * [Innovative Algorithms](/ia.html)
  * [Data Organization, Management and Access](/doma.html)
  * [Scalable Systems](/ssl.html)
  * [Tools and Material to support Training activities](/ssc.html)
  * [Service containerization, DevOps, security, service monitoring, and accounting](/osglhc.html)
  * [Network monitoring and analytics](/osglhc.html)

It is *not* required that the mentors are IRIS-HEP team members, any 
appropriate mentor from the larger community working in one of these areas
can be part of the program.

  Two types of IRIS-HEP Fellows are possible:

  * **IRIS-HEP Graduate Fellows** - Graduate fellows spend 3 months working **remotely** with a mentor developing research software relevant for HEP in one of the R&D areas listed above. Fellows are expected to have a base research stipend from their university, but receive a monthly subsistence plus travel expenses from their IRIS-HEP fellowship.  **Travel support is not available in 2020 due to the COVID-19 pandemeic.  All work and interactions with mentors will be entirely virtual.**
  
  * **IRIS-HEP Undergraduate Fellows** - Undergraduate fellows work **remotely** with mentors in their local home institution for 10-12 weeks, either developing or using research software relevant for HEP in the categories listed above. Undergraduate fellows receive a monthly stipend during their fellowship.  In some cases, travel support may be available.  **Travel support is not available in 2020 due to the COVID-19 pandemeic.  All work and interactions with mentors will be entirely virtual**.

  Examples fellows in a related program can be found on the [DIANA/HEP Fellow webpage](http://diana-hep.org/pages/fellows.html) and example projects of interest in the HEP community can be found on the [HEP Software Foundation Google Summer of Code (HSF GSoC) webpage](https://hepsoftwarefoundation.org/activities/gsoc.html). While GSoC is a separate program, funded by Google, many of the projects could also be appropriate for IRIS-HEP Fellows if they are within the R&D areas listed above.

Interested prospective fellows and/or mentors should write to fellows@iris-hep.org for more information.

Prospective fellows will eventually apply (to fellows@iris-hep.org) by providing:

 * A CV
 * A short proposal.  In the proposal you should briefly describe the software development activity that you would like to pursue, and how that activity will enhance your own and other people's research activities. Note also the intended software project or person with whom you will collaborate and the location where you would need to travel for that collaboration. The proposal should be short, typically no more one page to describe the project and then a short timeline with deliverables (see also examples from previous fellows). 

IRIS-HEP Fellow positions will be awarded in a rolling fashion based on submitted project proposals.

# IRIS-HEP Fellows

<div class="container-fluid">
  <div class="row">
{% assign sorted = site.pages | sort_natural: 'title' %}
{% for mypage in sorted %}
  {% if mypage.pagetype == 'fellow' %}
     {% assign person = mypage %}
     <div class="card" style="width: 12rem;">
        <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
        <div class="card-body d-flex flex-column">
          <div class="card-text">
             <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
             <small>{{person.institution}}</small><br><br>
          </div>
          <div class="card-text mt-auto"><i>{{person.dates}}</i><br></div>
        </div>
     </div>
  {% endif %}
{% endfor %}
  </div>
  <br>
</div>

# Example fellow projects

Applicants should feel free to make their own proposal for a software
project within any of the R&D areas of the Institute. We list here some
specific example topics and projects for which their is a known opportunity
for a Fellow to collaborate. (This is a non-exhaustive list, more to come!)

- **Translating analyses into prototype analysis systems**: This project is situated in the [Analysis Systems](/as.html) focus area. An existing realistic physics analysis will be translated into new prototype analysis systems. The new implementation will be benchmarked and compared to existing traditional approaches. An example analysis for this is the search for [Higgs boson decays to four leptons with CMS open data](http://opendata.cern.ch/docs/observing-higgs-over-one-petabyte-new-cms-open-data). This channel significantly contributed to the Higgs boson discovery in 2012. In this project, it will be translated to a new approach, making use of tools like [coffea](https://github.com/CoffeaTeam/coffea) and [awkward-array](/projects/awkward.html).

- **Probabilistic Programming for COVID:** The [PPX](/projects/ppx.html) protocol developed for the [Etalumis project](https://phys.org/news/2019-11-etalumis-reverses-simulations-reveal-science.html) allows an external inference algorithm to control the execution of a simulator. Originally this was the HEP event generator Sherpa. The same tools are now being used to control epidemiological simulators for inference and planning (see [here](https://arxiv.org/abs/1905.12432) and [here](https://arxiv.org/abs/2003.13221)). We seek a fellow to join in the effort for PPX / probprog and COVID simulators. The project deliverable would involve pedagogical examples and documentation to aid other epidemiologists to do the same with their own simulators.

- **Active learning for more efficient generation of Monte Carlo for exclusion plots:**
An [active learning algorithm called has been developed](https://indico.cern.ch/event/708041/contributions/3269754/) to make smart choices for parameters of signal Monte Carlo (eg. for a SUSY scan) that requires many fewer signal samples for producing a quality exclusion contour. Project would be to interface [excursion](https://github.com/diana-hep/excursion)  with either the ATLAS or CMS production system and REANA/RECAST. Ideally, excursion algorithm would run on a machine with a GPU and be upgraded to include advances in scalable Gaussian Processes (eg. [GPyTorch](https://gpytorch.ai)).

- **Contributions to Pythonic jet tools for Scikit-HEP:** [Scikit-HEP](http://scikit-hep.org) has a tool called [pyjet](https://github.com/scikit-hep/pyjet), which provides an interface between FastJet and NumPy. The tool was developed prior to [Uproot](https://github.com/scikit-hep/uproot#readme) and [Awkward Array](https://github.com/scikit-hep/awkward-1.0#readme), which extend columnar (NumPy-like) analysis to High Energy Physics. As of version 3.3, [FastJet](http://fastjet.fr/repo/fastjet-doc-3.3.3.pdf) itself ships with a Python interface, but it was not designed with columnar analysis in mind. Pyjet, on the other hand, is incomplete: it lacks some functionality related to jet substructure. This project would first investigate the design considerations of the existing Python bindings with Scikit-HEP’s Uproot and [Awkward Array](/projects/awkward.html) in mind and then contribute to improving the jet tools for the Scikit-HEP ecosystem. 

- **CMS RECAST example & documentation:** [RECAST](/projects/recast.html) is a platform for systematic interpretation of LHC searches. It reuses preserved analysis workflows from the LHC experiments, which is now possible with containerization and tools such as [REANA](http://reanahub.io). Recently, IRIS-HEP and the HEP Software Foundation (HSF) supported an [analysis preservation bootcamp at CERN](/2020/02/17/analysis-preservation.html) teaching these tools. Furthermore, the ATLAS experiment is now actively using RECAST. We seek a member of CMS to incorporate a CMS analysis into the system with support from IRIS-HEP, REANA, and RECAST developers. 

- **A pyhf converter for binned likelihood models in CMS Combine:** Binned likelihood models based on template histograms are ubiquitous in both ATLAS and CMS. Within ATLAS the HistFactory tool is used widely (sometimes from a higher-level tool like HistFitter or TRExFitter). Within CMS the Combine tool is widely used. Both produce RooFit workspaces. Recently, the HistFactory specification was implemented in a pure python environment called [pyhf](/projects/pyhf.html), which can take advantage of GPU acceleration, automatic differentiation, etc. via backends like TensorFlow, PyTorch, JAX, etc. In addition, the pyhf model uses a JSON schema which has benefits for digital publishing and reinterpretation. We seek a fellow to develop a to converter for binned template likelihoods from the CMS Combine syntax to the pyhf specification and develop some tools to perform comparisons between the two models.

- **pyhf Hardware Acceleration Benchmarking**: This project is situated in the [Analysis Systems](https://iris-hep.org/as.html) focus area.
A benchmarking suite will be written for [`pyhf`](https://github.com/scikit-hep/pyhf) in Python to test and benchmark the performance increase of the hardware accelerated backends on GPUs on openly published physics data from LHC experiments [[10.17182/hepdata.89408](https://doi.org/10.17182/hepdata.89408), [10.17182/hepdata.92006](https://doi.org/10.17182/hepdata.92006)].
The benchmarking suite would preferably be written as a [`pytest`](https://docs.pytest.org/en/latest/) module.

- **Integrating MadAnalysis and pyhf into RECAST_cli and REANA:** RECAST is a framework for systematic reinterpretation of Analyses prepared at the LHC using computational workflows. The workflows can run locally, or on REANA, a cloud-native distributed application. It consists of a public and private web-services, the “Frontend” and “Control Plane'' components respectively, for managing reinterpretation requests from the phenomenology community. A RECAST_cli (command line interface) for truth reinterpretation, based on the Rivet package, has been previously developed. In its current state, the truth reinterpretation runs only on the user’s local machine. The goal of this project is three fold: add new backends to the RECAST_cli besides Rivet (e.g. MadAnalsyis), add alternative statistical tools (e.g. pyhf), and to run the workflows in REANA in the cloud.

- **Aligning the func_adl python and C++ backends:** ServiceX is a distributed, cloud-native application that extracts columnar data from HEP event data and delivers it to an analyst. The func_adl data query language is used to tell ServiceX how to extract the data (what columns, what simple cuts, etc.). ServiceX/func_adl has two backends that are currently part of ServiceX - one based on C++ and one based on columnar processing using uproot and awkward array. The two take a common language, func_adl, and convert it to either C++ or python to execute against an appropriate dataset. The two have been developed independently and have similar but not identical features.
The main goal of this work will be to develop a common test suite that runs the same queries against each back-end and checks that their results are the same. The stretch goal will be to start implementing the incomplete corners of functionality in each, working with the authors of each backend, Gordon and Mason (both members of IRIS-HEP)

- **Reading CMS Run 1/2 miniAOD files with ServiceX and func_adl:** ServiceX is a distributed, cloud-native application that extracts columnar data from HEP event data and delivers it to an analyst. The func_adl data query language is used to tell ServiceX how to extract the data (what columns, what simple cuts, etc.). The func_adl data query language has two backends that are currently part of ServiceX - one based on C++ for ATLAS data and one based on columnar processing using uproot and awkward array. The C++ backend currently runs only on the ATLAS binary format, xAOD. The backend is written in python. This project will modify the C++ backend to also run on CMS mini-AOD binary files (Run 1/Run 2).

- **Proactive Site Monitoring:** A site on the Open Science Grid can malfunction for numerous reasons.  One of the best ways to spot an issue with a site is to watch for changes in a site’s accounting data.  Further, accounting data is vitally important for WLCG pledge and MOU calculations.  It is simple to check for sites that stop reporting completely, but it is difficult to watch for sites that only partially malfunction.  This project would entail creating a proactive monitoring suite that would alert OSG operations of malfunctioning sites.  Using outlier detection, The monitoring suite would watch for significant changes in the accounting information for VOs at all OSG connected clusters.  The alerting would notify OSG operators of the outlier for further analysis.
