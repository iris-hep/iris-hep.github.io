---
permalink: /projects/scaling.html
layout: project
title: Scaling to HL-LHC Data Rates
shortname: scaling
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Scaling Infrastructure for High Luminosity LHC
maturity: Development
maturity-note:
start-date: 2024-05-01
focus-area:
 - doma
 - osglhc
team:
 - bbockelm
 - ddavila0
 - aashayarora
---

During the High-Luminosity era the LHC experiments expect a significant
 increment in the data produced by the collider, this also supposes an
 serious increase of data to be distributed across the different Facilities
 that pledge resources to the collaborations.

<strong>Data Challenge</strong>
In order to prepare and assess the readiness of the infrastructure and the
 systems in charge of transferring data, the WLCG has proposed a series of
 incremental “Data Challenges”. These challenges are carried out every 2
 years, with many “Mini-challenges” happening in between.

The objective of this project is to support the participation of US sites in
 the “Data Challenges” and coordinate mini-challenges that help to not only
 identify possible shortcomings in the capacity of the sites but also test new
 technologies that could help us to sustain the expected data rates. One of such
 technologies is SENSE.

<br>
<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/scaling-dc24.png" alt="WLCG Data Challenge 2024">
  <div class="card-body">
   <h5 class="card-title">Data Challenge 2024</h5>
   <p class="card-text"> Overview of the data rates reached during the Data Challenge 2024.</p>
  </div>
</div>
<br>

<strong>SENSE/Rucio</strong>
SENSE is a Network Services Orchestrator created by ESNet that allows, among other
 things, to create bandwidth allocations across Facilities. We have envisioned
 Rucio as the first use case of SENSE. The objective of this project is deploy
 support for SENSE in the majority of the USCMS and USATLAS sites and enable Rucio
 to make use of this technology in order to assign priorities to its more critical
 data flows.

<br>
<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/scaling-sense-rucio.png" alt="SENSE's bandwidth allocation">
  <div class="card-body">
   <h5 class="card-title">SENSE Demonstration</h5>
   <p class="card-text"> Demonstration of SENSE’s bandwidth allocation over 2 competing data flows.</p>
  </div>
</div>
<br>
