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


### The Analysis Grand Challenge

![Analysis Grand Challenge](/assets/images/agc-1.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}


The "Analysis Grand Challenge" organized by IRIS-HEP includes the binned analysis, reinterpretation and end-to-end optimization of physics analysis use cases. It also includes the development of the required cyber infrastructure to execute them in order to demonstrate technologies envisioned for HL-LHC. To enable these use cases and more, the expected capabilities include:

- New user interfaces: Complementary services that present the analyst with a notebook-based interface. Example software: Jupyter.
- Data access: Services that provide quick access to the experiment’s official data sets, often allowing simple derivations and local caching for efficient access. Example software and services: Rucio, ServiceX, SkyHook, iDDS, RNTuple.
- Event selection: Systems/frameworks allowing analysts to process entire datasets, select desired events, and calculate derived quantities. Example software and services: Coffea, awkward-array, func_adl, RDataFrame. Histogramming and summary statistics: Closely tied to the event selection, histogramming tools provide physicists with the ability to summarize the observed quantities in a dataset. Example software and services: Coffea, func_adl, cabinetry, hist.
- Statistical model building and fitting: Tools that translate specifications for event selection, summary statistics, and histogramming quantities into statistical models, leveraging the capabilities above, and perform fits and statistical analysis with the resulting models. Example software and services: cabinetry, pyhf, FuncX+pyhf fitting service
- Reinterpretation / analysis preservation: Standards for capturing the entire analysis workflow, and services to reuse the workflow which enables reinterpretation. Example software and services: REANA, RECAST.

![Generic schema of AGC components](/assets/images/agc-0.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

The Analysis Grand Challenge is being conducted during 2021‒2023, leaving enough time for tuning software tools and services developed as a part of the IRIS-HEP ecosystem before the start-up of the HL-LHC.


### AGC repositories and related resources

[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/iris-hep/analysis-grand-challenge)


### Recent accomplishments and plans

**Recent accomplishments**:

- Demonstrate ServiceX -> coffea -> cabinetry -> pyhf differentiable programming roadmap: see more [A.Held contribution](https://indico.cern.ch/event/1076231/contributions/4560405/)
- Execute IRIS-HEP AGC tools soft-launch event - [AGC Tools 2021 Workshop](https://indico.cern.ch/event/1076231/)
- Execute second part of IRIS-HEP AGC tools soft-launch event - [AGC Tools 2022 Workshop](https://indico.cern.ch/event/1126109/)
- Developed an analysis example based on CMS Opendata used for Analysis Grand Challenge demonstration

**Future plans for 2022**:

- Improve experiment-related coffea-casa setups (e.g. improve experiment specific data access and other features)
- Performance tests of SkyHook integrated in Coffea-Casa analysis facility at University Nebraska-Lincoln and ATLAS analysis facility instance at the University of Chicago
- Performance tests of ServiceX integrated in Coffea-Casa analysis facility at University Nebraska-Lincoln and ATLAS analysis facility instance at the University of Chicago
- Benchmark performance of prototype of other system components for Analysis Grand Challenge
- Work with HSF DAWG group about specification of new sub-benchmarks as a potential new milestone for AGC
- Improve and increase complexity of developed analysis example used for next round of demonstration  (the first example based on CMS Open Data was shown at the [AGC Tools 2022 Workshop](https://indico.cern.ch/event/1126109/))


### Recent videos and tutorials

*  "Introduction to AGC Tools workshop" - Oksana Shadura, Alexander Held - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/i8brE9qpYv0)
*  "Data handling: uproot, awkward & vector" - Mason Proffitt - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/KS4_bOXf0mg)
* "Histogramming & visualization: hist & mplhep " - Andrzej Novak - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/wpB6RofvXdA)
*  "Columnar analysis with coffea" - Lindsey Gray, Nick Smith - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/y79jDq2kmSk)
*  "Queries with func_adl" - Mason Proffitt - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/F2320pVB7Rg)
*  "Data Delivery with ServiceX" - Kyungeon Choi - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/ZXPOLF9eTf8)
*  "From data delivery to statistical inference: ServiceX, coffea, cabinetry & pyhf" - Alexander Held - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/5Vuiy5zoVPk)
*  "Data management with Skyhook" - Carlos Maltzahn, Jayjeet Chakraborty - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/JCQVY551V34)
*  "Scale-out with coffea: coffea-casa" - Oksana Shadura - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/7s30NNsAG7w)
