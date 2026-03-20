---
permalink: /projects/ic.html
layout: project
title: Integration Challenge
shortname: ic
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: ic
maturity: Testing
maturity-note:
github: https://github.com/iris-hep/integration-challenge
start-date: 2025-09-01
focus-area:
 - as
 - doma
challenge-area:
  - agc
team:
 - oshadura
 - alexander-held
 - MoAly98
 - pfackeldey
 - ArturU043
---

The upcoming High-Luminosity Large Hadron Collider (HL-LHC) at CERN will deliver an unprecedented volume of data for High Energy Physics (HEP). This wealth of information offers significant opportunities for scientific discovery, but its scale challenges traditional analysis workflows. In this project we are focusing on the development of CMS and ATLAS analysis pipelines to meet HL-LHC demands. These pipelines build on the broader scientific Python ecosystem, complemented by solutions specifically designed for HEP.

A central focus of this project is the Integration Challenge, an IRIS-HEP led effort aimed at assessing the readiness of the software stack developed to be used in real world physics analysis and improving the readiness of analysis facilities for the HL-LHC era. The Integration Challenge acts as an end-to-end integration test: by implementing a complete physics analysis pipeline, it evaluates tool interoperability and the overall user experience for analysts. The current pipeline includes columnar data processing, machine learning, statistical inference, and visualization tasks covering a variety of CMS and ATLAS analysis scenarios.

In addition, the Integration Challenge explores efficient strategies for delivering skimmed data using diverse tools and data formats, as well as evaluating the ServiceX data-delivery system for HEP analyses. Throughout the testing phase, we are also investigating several prototype services—such as histogram-as-a-service capabilities—along with other emerging services that may support future HL-LHC analysis workflows.