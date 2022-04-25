---
permalink: /projects/idds.html
layout: project
title: Intelligent Data Delivery Service
shortname: idds
pagetype: project
image: logos/idds.png
blurb: Delivering Data.  Better.
maturity: Deployed
maturity-note:
focus-area: doma
team:
 - bbockelm
 - wguan
 - Tadashi Maeno
 - Rui Zhang
 - Tuan Minh Pham
---

If HL-LHC is going to process exabytes of data, it needs data access systems
that can deliver.  The intelligent Data Delivery Service (iDDS) is an attempt
to make the workflow system more aware of the data workflows and get data
processed more effectively.  The initial use case was the "data caraousel" for
ATLAS: orchestrating the processing of data as soon as it comes out of archival
systems instead of waiting for entire datasets to be staged.  This minimizes
the use of disk buffers -- especially relevant for HL-LHC as the size of the
disk buffer shrinks compared to the total dataset volumes.

The IDDS work is an ongoing project within IRIS-HEP in the DOMA and
Analysis Systems area, as well as within the HEP Software Foundation
event delivery group.

## Architecture: [reference vCHEP2021](https://arxiv.org/pdf/2103.00523.pdf)
![iDDS Architecture](/assets/images/idds_architecture.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

## Use Cases

 * *[ATLAS Data Carousel](https://aipanda181.cern.ch/monitor/)*:
   This use case, in production since May 2020 for the
   ATLAS experiment, minimizes the delay between data being read from tape
   archive until it's delivered to a processor.

   It has been running smoothly for 2 years. Hundreds of PB data has been processed.
   (The monitor snapshot below only shows data from July 2021. The data before it is already archived.)
   ![iDDS ATLAS Data Carousel](/assets/images/idds_atlas_data_carousel.jpg){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}


 * *Hyper Parameter Optimization (HPO)*: There's a strong overlap between the
   data management needed for detector events and what is needed for management
   of hyperparameters in training machine learning models. iDDS has developed
   a backend plugin for HPO and thus provides a fully-automated platform for
   HPO on top of geographically distributed GPU resources on the grid, HPC, and
   clouds.

   We have advertised using iDDS for HPO within the ATLAS community; however,
   its application is not limited to ATLAS. Currently, it is actively used for
   ATLAS workflows for FastCaloGAN and ToyMC.

 * *[DAG based workflow management](https://aipanda017.cern.ch/monitor/dashboard.html)*:
   To support its data delivery functionality,
   iDDS internally implements a high-level workflow engine, specifying a set of
   interdependent jobs as a directed acyclic graph (DAG).  iDDS, interacting
   with software such as PanDA, drives workload scheduling and implements
   management of job chains for multi-step processing with thousands of jobs
   per step.

   In fact, the DAG engine can be used directly for workflow management.  Using
   the DOMA PanDA instance, iDDS is being employed by the Rubin Observatory
   (formerly LSST) for their data processing needs.  So far, the observatory has
   selected PanDA/iDDS as its workflow management system. The R&D instance has processed
   thousands of jobs daily. It has passed the DP0.2 tests.New production instance is
   scheduled to be setup at SLAC this summer.

   ![iDDS ATLAS DOMA Rubin](/assets/images/idds_doma_rubin.jpg){:style="display:block; margin-left: auto; margin-right: auto; width: 50%"}

 * *Monte Carlo Toy Based Confidence Limits with iDDS*: An efficient Monte Carlo
   Toy generation process requires multiple steps of grid scans, where current steps
   depends on the previous steps. The HPO framework is employed to provide a
   fully-automated platform for Toy generations.

   The test workflow has passed successfully. Working on documenting and client integration.
   Will advertise it to users soon.

 * *REANA/PanDA/iDDS integration for Active Learning*: Active Learning is one of the ideas
   that require complex logics between tasks in an analysis workflow. Here we employ iDDS
   for workflow managements, PanDA for task management and REANA (Reusable Analyses) for
   analysis tasks executions.

   The demo workflow has passed the tests successfully. Working to adapt real analysis
   workflows.

 * *sPHENIX workflow management*: The sPHENIX is also starting to test to use iDDS/PanDA for
   its workflow management.

## Reference
 * *[Home page](https://iddsserver.cern.ch/website/)*
 * *[Code at github](https://github.com/HSF/iDDS)*
 * *[Documents at readthedocs](https://idds.readthedocs.io)*
 * *[ATLAS instance monitor](https://aipanda181.cern.ch/monitor/)*, *[ATLAS request monitor](https://bigpanda.cern.ch/idds)*
 * *[DOMA instance monitor](https://aipanda017.cern.ch/monitor/dashboard.html)*, *[DOMA request monitor](https://panda-doma.cern.ch/idds/)*, *[DOMA workflow monitor](https://panda-doma.cern.ch/idds/wfprogress/)*
