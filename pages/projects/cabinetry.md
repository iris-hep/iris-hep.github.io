---
permalink: /projects/cabinetry.html
layout: project
title: Cabinetry
shortname: cabinetry
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Building complex template fits
focus-area: as
team:
 - cranmer
 - alexander-held

---

`Cabinetry` aims to provide a vertical slice through the tools being developed by IRIS-HEP for the final stages of analysis. While many results at the LHC use the ROOT implementation of HistFactory or the newer pythonic implementation [pyhf](/projects/pyhf.html), it is the responsibility of the users of those tools to define the event selection, variables of interest, and fill a multitude of histograms corresponding to various systematic variations. This task is well suited for automation, and various tools like HistFitter and TRExFitter have been developed to address this need. Those tools were designed to work with the ROOT implementation of HistFactory, and while they don't have a shared declarative specification, there are many commonalities. This is a point of convergence for projects in the Analysis Systems focus area as it brings together many tools IRIS-HEP is developing.

The goal of [`cabinetry`](https://github.com/alexander-held/cabinetry) is to provide a declarative specification based on experiences with HistFitter and TRExFitter for how to build these types of complicated binned likelihood models. `Cabinetry` will also provide an implementation that leverages other tools being developed in Analysis Systems.

[![GitHub](https://img.shields.io/badge/GitHub-555555.svg)](https://github.com/alexander-held/cabinetry)

---
<img width="60%" src ="/assets/images/cabinetry-schematic.png" />

---
## How these tools fit together
<img width="60%" src="/assets/images/cabinetry-vertical-slice.png" />

----
## A poster
Alex Held created this nice poster on [Rethinking the final stages of analysis](https://indico.cern.ch/event/894127/attachments/1996570/3331188/18_-_AS_Final_analysis_stages.pdf)

<img  width="60%" src="/assets/images/AS_Final_analysis_stages-small.png" alt="poster" />
