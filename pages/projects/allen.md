---
permalink: /projects/allen.html
layout: project
title: GPU Trigger Project
shortname: allen
pagetype: project
image: logos/allen.png
logowidth: 25%
blurb: "Allen: a GPU trigger for LHCb"
focus-area: ia
team:
 - mityinzer
 - dcraik
 - mdsokoloff
---

The Allen application is a fully GPU-based implementation of the first level trigger for the upgrade of the LHCb detector, due to start data taking in 2022. **Allen is the first complete high-throughput GPU trigger proposed for a HEP experiment.**

IRIS-HEP has been directly supporting vital development work required to monitor the performance of Allen in real time, and to check the quality of the Run 3 LHCb data once the next LHC run beings. Furthermore, IRIS-HEP members have also been involved in almost all aspects of Allen development.

By the end of 2019, we [demonstrated](https://inspirehep.net/literature/1771853) that Allen can process the 40 Tbit/s data rate of the upgraded LHCb detector and perform a wide variety of pattern recognition tasks. These include finding the trajectories of charged particles, finding proton–proton collision points, identifying particles as hadrons or muons, and finding the displaced decay vertices of long-lived particles. We further demonstrated that Allen can be implemented in around 500 scientific or consumer GPU cards, that it is not I/O bound, and that it can be operated at the full LHC collision rate of 30 MHz.

By late spring 2020, we had demonstrated that Allen was a fully viable production candidate for the LHCb trigger system. The work done by IRIS-HEP members was critical during the Allen review at CERN.

In June 2020, the LHCb collaboration officially adopted Allen as the baseline choice for the Run 3 trigger. See, e.g., the following press releases:

- [Graphics cards farm to help in search of new physics at LHCb](https://phys.org/news/2020-06-graphics-cards-farm-physics-lhcb.html)
- [Allen initiative – supported by CERN openlab – key to LHCb trigger upgrade](https://home.cern/news/news/computing/allen-initiative-supported-cern-openlab-key-lhcb-trigger-upgrade)
- [CERN openlab: the use of GPUs for parallel computing within the LHCb experiment](https://www.e4company.com/en/2020/06/cern-openlab-the-use-of-gpus-for-parallel-computing-within-the-lhcb-experiment/)

IRIS-HEP members are now working to make Allen fully production ready for deployment in time for the start of data taking in 2022.

The Allen software is available open source, and able to run without linking to LHCb software, on [gitlab](https://gitlab.cern.ch/lhcb/Allen).

----

## Monitoring

It is necessary for data quality purposes to monitor the acceptance rates of trigger lines as well as features of reconstructed tracks and vertices live during data taking.
For the demonstration of Allen, monitoring histograms were populated in a dedicated monitoring thread using information from the output data banks as well as additional data copied back to the host specifically for monitoring purposes. The flow of monitoring-related data is shown in the diagram below.

<img width="60%" src ="/assets/images/allen-currentMonitoring.png" />

We are currently working to move the monitoring accumulation from the dedicated thread into the threads responsible for running the Allen trigger pipeline. This will allow any CPU algorithm to define and populate monitoring counters and histograms.

<img width="60%" src ="/assets/images/allen-nextMonitoring.png" />

We also intend to allow GPU algorithms within the pipeline to define and populate monitoring counters. This will significantly reduce the amount of information that must be copied from the GPU device to the host CPU and also opens up the possibility of monitoring features of events that are not selected by the trigger.

<img width="60%" src ="/assets/images/allen-finalMonitoring.png" />
