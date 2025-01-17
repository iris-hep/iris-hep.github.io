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
challenge-area:
  - agc
team:
 - oshadura
 - alexander-held
 - ekauffma
---


### The Analysis Grand Challenge

![Analysis Grand Challenge](/assets/images/agc-1.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}


The "Analysis Grand Challenge" organized by IRIS-HEP includes the binned analysis, reinterpretation and end-to-end optimization of physics analysis use cases. It also includes the development of the required cyber infrastructure to execute them in order to demonstrate technologies envisioned for HL-LHC. To enable these use cases and more, the expected capabilities include:

- **New user interfaces**: complementary services that present the analyst with a notebook-based interface. Example software: Jupyter.
- **Data access**: services that provide quick access to the experiment’s official data sets, often allowing simple derivations and local caching for efficient access. Example software and services: Rucio, ServiceX, SkyHook, RNTuple.
- **Event selection**: systems/frameworks allowing analysts to process entire datasets, select desired events, and calculate derived quantities. Example software and services: Coffea, awkward-array, awkward-dask, func_adl, RDataFrame.
- **Histogramming and summary statistics**: closely tied to the event selection, histogramming tools provide physicists with the ability to summarize the observed quantities in a dataset. Example software and services: Coffea, func_adl, cabinetry, hist.
- **Statistical model building and fitting**: tools that translate specifications for event selection, summary statistics, and histogramming quantities into statistical models, leveraging the capabilities above, and perform fits and statistical analysis with the resulting models. Example software and services: cabinetry, pyhf, FuncX+pyhf fitting service
- **Reinterpretation / analysis preservation**: standards for capturing the entire analysis workflow, and services to reuse the workflow which enables reinterpretation. Example software and services: REANA, RECAST.

![Generic schema of AGC components](/assets/images/agc-0.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

The Analysis Grand Challenge is being conducted during 2021‒2023, leaving enough time for tuning software tools and services developed as a part of the IRIS-HEP ecosystem before the start-up of the HL-LHC.


### AGC repositories and related resources

AGC has a dedicated webpage for documentation: [https://agc.readthedocs.io/en/latest/](https://agc.readthedocs.io/en/latest/?badge=latest)

[![Documentation Status](https://readthedocs.org/projects/agc/badge/?version=latest)](https://agc.readthedocs.io/en/latest/?badge=latest)
[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/iris-hep/analysis-grand-challenge)


### Recent accomplishments and plans

**Recent accomplishments**:

- Demonstrate ServiceX -> coffea -> cabinetry -> pyhf differentiable programming roadmap: see more [A.Held contribution](https://indico.cern.ch/event/1076231/contributions/4560405/)
- Execute IRIS-HEP AGC tools soft-launch event - [AGC Tools 2021 Workshop](https://indico.cern.ch/event/1076231/)
- Execute second part of IRIS-HEP AGC tools soft-launch event - [AGC Tools 2022 Workshop](https://indico.cern.ch/event/1126109/)
- Developed an analysis example based on CMS Opendata used for Analysis Grand Challenge demonstration
- Presented [first performance measurements with an AGC implementation](https://indico.cern.ch/event/1106990/contributions/4998188/) at ACAT 2022

**Future plans for 2023**:

- Improve experiment-related coffea-casa setups (e.g. improve experiment specific data access and other features)
- Performance tests of ServiceX integrated in Coffea-Casa analysis facility at University Nebraska-Lincoln and ATLAS analysis facility instance at the University of Chicago
- Benchmark performance of prototype of other system components for Analysis Grand Challenge
- Improve and increase complexity of developed analysis example used for next round of demonstration (the first example based on CMS Open Data was shown at the [AGC Tools 2022 Workshop](https://indico.cern.ch/event/1126109/))
- Incorporate ML into Analysis Grand Challenge analysis workflow and execute on analysis facilities
- Organise IRIS-HEP AGC community workshop at University Wisconsin-Madison - [AGC 2023 Workshop](https://indico.cern.ch/event/1260431)
- Prepare for Analysis Grand Challenge execution event (September 2023)


### Videos and tutorials

#### AGC Workshop 2022

*  IRIS-HEP AGC Tools 2022 Workshop - Alex Held, Oksana Shadura -  Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=uQCJQAy81EI)
*  "Foundation libraries (uproot, awkward, hist, mplhep)" - Mason Proffitt -  Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=O9KvsDMKOmY)
*  "Queries with func_adl and data delivery with ServiceX" - Gordon Watts - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=bZVWil01evs)
*  "Columnar analysis with coffea" - Mat Adamec - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=IVDAFYrlEFY&list=PLeZvkLnDkqbQRzUFfKgBuajnwNzGflodE&index=4)
*  "Statistical Inference: pyhf and cabinetry" - Matthew Feickert - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=tj_odt3z_4A)
*  "From data delivery to statistical inference with CMS Open Data" - Alexander Held - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=n1lUjTY8GGQ)
*  "Scale-out with coffea: coffea-casa analysis facility" - Carl Lundstedt - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=vkFn-apjmDA)
*  "Data management with Skyhook" - Jayjeet Chakrabort - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=dyUNOWlj2cA)
*  "Analysis user experience with Python HEP data science tools in ATLAS" - Matthew Feickert - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=8z06bioCGmM)
*  "Analysis user experience with Python HEP data science tools in LHCb" - Nathan Allen Grieser - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=LDopZWvKS9Y)
*  "Analysis user experience with Python HEP data science tools in CMS" - Lindsey Gray - Youtube video at [Analysis Grand Challenge Tools workshop 2022](https://www.youtube.com/watch?v=8cPv0q0FgwI)

#### AGC Workshop 2021

*  "Introduction to AGC Tools workshop" - Oksana Shadura, Alexander Held - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/i8brE9qpYv0)
*  "Data handling: uproot, awkward & vector" - Mason Proffitt - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/KS4_bOXf0mg)
* "Histogramming & visualization: hist & mplhep " - Andrzej Novak - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/wpB6RofvXdA)
*  "Columnar analysis with coffea" - Lindsey Gray, Nick Smith - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/y79jDq2kmSk)
*  "Queries with func_adl" - Mason Proffitt - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/F2320pVB7Rg)
*  "Data Delivery with ServiceX" - Kyungeon Choi - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/ZXPOLF9eTf8)
*  "From data delivery to statistical inference: ServiceX, coffea, cabinetry & pyhf" - Alexander Held - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/5Vuiy5zoVPk)
*  "Data management with Skyhook" - Carlos Maltzahn, Jayjeet Chakraborty - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/JCQVY551V34)
*  "Scale-out with coffea: coffea-casa" - Oksana Shadura - Youtube video at [Analysis Grand Challenge Tools workshop 2021](https://youtu.be/7s30NNsAG7w)

### Fellows

* [Andrii Falko](/pages/fellows/andriiknu.html)
* [Storm Lin](/pages/fellows/stormsomething.html)
