---
permalink: /projects/allen.html
layout: project
title: GPU Trigger Project
shortname: allen
pagetype: project
image: logos/allen.png
logowidth: 25%
blurb: "Allen: a GPU trigger for LHCb"
maturity: Testing
maturity-note:
github: https://gitlab.cern.ch/lhcb/Allen
start-date: 2018-04-19
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
The primary output channel of Allen (depicted downwards in the diagram below) is to attach additional data banks to the input data stream. However, this is only propagated to
the second level trigger if the event passes a trigger selection or, in the case of the luminosity summary bank (green in the diagram), if the event has been randomly selected for luminosity monitoring.
Additionally, these data banks are not available in real time. The monitoring system (red in the diagram) serves a selection of histograms and counters directly to an external monitoring interface.

<img width="60%" src ="/assets/images/allen-monitoring-io.png" />

For the demonstration of Allen, monitoring histograms were populated in a dedicated monitoring thread using information from the output data banks as well as additional data copied back to the host specifically for monitoring purposes. The flow of monitoring-related data as it existed in the demonstration version is shown in the diagram below.

<img width="60%" src ="/assets/images/allen-monitoring-before.png" />

For the production version of Allen, we have now moved the monitoring accumulation from the dedicated thread into the threads responsible for running the Allen trigger pipeline. This allows any algorithm in the sequence to define and populate monitoring counters and histograms and also opens up the possibility of monitoring features of events that are not selected by the trigger.
For GPU algorithms, this is achieved in two ways. Quantities that are copied to the host memory for other reasons (e.g. line decisions) can be used to directly populate histograms in the host memory. Quantities that are never copied to the host are used to calculate bin contents on the GPU device. The bin contents are then copied to the host to be added to the histogram, reducing the amount of data that must be copied to the host.
Histograms are served to an external monitoring display using the Gaudi MonitoringHub interface. An additional monitoring hub is also used within the aggregation thread, which combines histograms from separate GPU streams (which use independent host memory). The current flow of monitoring data is shown in the diagram below.

<img width="60%" src ="/assets/images/allen-monitoring-new.png" />
