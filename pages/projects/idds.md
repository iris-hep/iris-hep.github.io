---
permalink: /projects/idds.html
layout: project
title: Intelligent Data Delivery Service
shortname: idds
pagetype: project
image: logos/idds.png
blurb: Delivering Data.  Better.
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

## Architecture
![iDDS Architecture](/assets/images/idds_architecture.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}

## Use Cases

 * *ATLAS Data Carousel*:  This use case, in production since May 2020 for the
   ATLAS experiment, minimizes the delay between data being read from tape
   archive until it's delivered to a processor.

 * *Hyper Parameter Optimization (HPO)*: There's a strong overlap between the
   data management needed for detector events and what is needed for management
   of hyperparameters in training machine learning models. iDDS has developed
   a backend plugin for HPO and thus provides a fully-automated platform for
   HPO on top of geographically distributed GPU resources on the grid, HPC, and
   clouds.

   We have advertised using iDDS for HPO within the ATLAS community; however,
   its application is not limited to ATLAS. Currently, it is actively used for
   ATLAS workflows for FastCaloGAN and ToyMC.

 * *DAG based workflow management*: To support its data delivery functionality,
   iDDS internally implements a high-level workflow engine, specifying a set of
   interdependent jobs as a directed acyclic graph (DAG).  iDDS, interacting
   with software such as PanDA, drives workload scheduling and implements
   management of job chains for multi-step processing with thousands of jobs
   per step.

   In fact, the DAG engine can be used directly for workflow management.  Using
   the DOMA PanDA instance, iDDS is being tested by the Rubin Observatory
   (formerly LSST) for their data processing needs.  So far, the observatory has
   successfully tested iDDS with DAG workflows of over 50 and 150 thousand jobs.
