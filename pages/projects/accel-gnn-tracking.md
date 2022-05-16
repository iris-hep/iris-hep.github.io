---
permalink: /projects/accel-gnn-tracking.html
layout: project
title: Accelerated GNN Tracking
shortname: accel-gnn-tracking
pagetype: project
image: logos/gnn_tracking.png
blurb: accel-gnn-tracking
maturity: Exploratory
maturity-note:
start-date: 2019-09-12
github:
 - https://github.com/Neubauer-Group/GNN_code
 - https://github.com/GageDeZoort/interaction_network_paper
 - https://github.com/GageDeZoort/gnns-for-tracking
 - https://github.com/abdelabd/manual_GNN_conversion
focus-area: ia
team:
 - matkinso
 - Gage DeZoort
 - Javier Duarte
 - Abdelrahman Elabd
 - Lindsey Gray
 - Aneesh Heintz
 - Jonathan Kutasov
 - msneubauer
 - Isobel Ojalvo
 - Caitlin Patterson
 - Vesal Razavimaleki
 - Savannah Thais
 - Emily Tsai
 - Bei Wang
---

The tracking of charged particles produced in collisions at colliders is a crucial aspect of the science program in the experiments. One of the primary challenges for the HL-LHC is the ability to efficiently, accurately, and rapidly perform tracking in collision events with large interaction pile-up. This project aims to improve charged-particle tracking in the ATLAS and CMS experiments through the use of Geometric Deep Learn methods (particularly Graph Neural Networks
(GNNs)) and hardware-based acceleration (currently focused on FPGAs).
---

Most current GNN-based approaches to tracking proceed in three distinct stages: graphs are constructed from point cloud
of hits in the tracker, the graphs are processed through a GNN to predict a score for each edge (high scores indicate
that the edge like belongs to a true particle track, low scores indicate it is a spurious or noise edge), and finally
a clustering or graph walk algorithm is used to group the high-scored edges into track candidates. We are studying
innovations and optimizations at all three stages of this pipeline. We are also exploring alternate 'one-shot'
architectures that are trainable end-to-end and go from point-clouds to track candidates with fit parameters in a
single pass.

<p align="center">
  <img width="90%" src ="/assets/images/gnn_tracking_steps.png">
</p>

---
We are also studying two complimentary approaches to accelerate the inference of these GNN tracking pipelines on FPGAs
 with the goal of assessing feasibility of these algorithms for use at the trigger level at the HL-LHC..
The first uses the OpenCL Framework to optimize a co-processor approach where kernels are initiated on a CPU and
executed on the FPGA. The second uses the hls4ml package to translate different components of the GNN pipeline
directly into FPGA firmware code.

----
