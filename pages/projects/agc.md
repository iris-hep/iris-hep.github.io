---
permalink: /projects/agc.html
layout: project
title: Analysis Grand Challenge
shortname: agc
pagetype: project
image: logos/Iris-hep-4-no-long-name.png
logowidth: 15%
blurb: Analysis Grand Challenge
maturity: Development
maturity-note:
focus-area:
 - doma
 - as
team:
 - oshadura
 - alexander-held
---


### About AGC project

IRIS-HEP is organizing an “Analysis Grand Challenge”, which includes the binned analysis, reinterpretation and end-to-end optimization physics analysis use cases and developing needed cyber infrastructure to execute them, in order to demonstrate technologies envisioned for HL-LHC. To enable these use cases and more, the expected capabilities include:

- New user interfaces: Complementary services that present the analyst with a notebook-based interface. Example software: Jupyter.
- Data access: Services that provide quick access to the experiment’s official data sets, often allowing simple derivations and local caching for efficient access. Example software and services: Rucio, ServiceX, SkyHook, iDDS, RNTuple.
- Event selection: Systems/frameworks allowing analysts to process entire datasets, select desired events, and calculate derived quantities. Example software and services: Coffea, awkward-array, func_adl, RDataFrame. Histogramming and summary statistics: Closely tied to the event selection, histogramming tools provide physicists with the ability to summarize the observed quantities in a dataset. Example software and services: Coffea, func_adl, cabinetry, hist.
- Statistical model building and fitting: Tools that translate specifications for event selection, summary statistics, and histogramming quantities into statistical models, leveraging the capabilities above, and perform fits and statistical analysis with the resulting models. Example software and services: cabinetry, pyhf, FuncX+pyhf fitting service
- Reinterpretation / analysis preservation: Standards for capturing the entire analysis workflow, and services to reuse the workflow which enables reinterpretation. Example software and services: REANA, RECAST.

Analysis Grand Challenge will be conducted during 2021‒2023, leaving enough time for tuning software tools and services developed as a part of the IRIS-HEP ecosystem before the start-up of the HL-LHC.



### AGC repositories and related resources

[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/iris-hep/analysis-grand-challenge)


### Recent accomplishments and plans

**Recent accomplishments**:

- Demonstrate ServiceX -> coffea -> cabinetry -> pyhf differentiable programming roadmap: see more [A.Held contribution](https://indico.cern.ch/event/1076231/contributions/4560405/)
- Execute IRIS-HEP AGC tools soft-launch event - [AGC Tools 2021 Workshop](https://indico.cern.ch/event/1076231/)

**Future plans for 2022**:

- Improve experiment-related coffea-casa setups (e.g. improve experiment specific data access and other features)
- Test integration of SkyHook in coffea-casa@UNL and SSL (as a testbed)
- Deploy and test all packages and services (e.g. related to AGC) at various analysis facilities
- Benchmark performance of prototype system components for AGC
- Work with HSF DAWG group about specification of new sub-benchmarks as a potential new milestone for AGC
- Develop analysis example used for next round of demonstration (possibly based on new CMS OpenData)


### Recent videos and tutorials
