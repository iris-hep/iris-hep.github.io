---
permalink: /projects/acts.html
layout: project
title: ACTS
shortname: acts
pagetype: project
image: logos/ACTSlogo.gif
logowidth: 30%
blurb: Development of experiment-independent, thread-safe track reconstruction.
focus-area: ia
team:
 - heather-gray
 - latompkins
 - rockybala
 - Irina Ene
 - gagnonlg
 - beomki-yeo
 - cvarni
 - Tomohiro Yamazaki
 - xiaocong-ai
---

[ACTS](http://acts.web.cern.ch/ACTS/) is international, open source project developing an experiment-independent set of track reconstruction tools. The main philosophy is to provide high-level track reconstruction modules that can be used for any tracking detector. The description of the tracking detector's geometry is optimized for efficient navigation and quick extrapolation of tracks. Converters for several common geometry description languages exist. Having a highly performant, yet largely customizable implementation of track reconstruction algorithms was a primary objective for the design of this toolset. Additionally, the applicability to real-life HEP experiments plays major role in the development process. Apart from algorithmic code, this project also provides an event data model for the description of track parameters and measurements.

Key features of this project include: tracking geometry description which can be constructed from TGeo, DD4Hep, or GDML input, simple and efficient event data model, performant and highly flexible algorithms for track propagation and fitting, basic seed finding algorithms. See [ACTS webpage](http://acts.web.cern.ch/ACTS/) for further details of the full ACTS project.

IRIS-HEP members are involved in many aspects of ACTS development, including porting of track reconstruction to GPU toolchains, integration of ACTS into the [Athena framework](https://gitlab.cern.ch/atlas/athena) in the context of the phase-II upgrade of the ATLAS detector, and R&D implementations of cutting-edge tracking and vertexing algorithms.

The team supported by IRIS-HEP collaborating on the ACTS project are listed on this page. See [here](http://acts.web.cern.ch/ACTS/authors/) for the full author list. We held a [tracking workshop](https://indico.physics.lbl.gov/indico/event/712) for HEP in Berkeley in January 2019. Key ACTS experts from Europe were invited speakers at the workshop.
