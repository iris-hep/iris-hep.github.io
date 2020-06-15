---
permalink: /projects/tpc.html
layout: project
title: Third Party Copy
shortname: tpc
pagetype: project
image: logos/tpc.png
blurb: Envisioning a new way to move LHC data
focus-area: 
 - doma
 - osglhc
team:
 - bbockelm
 - efajardo
 - ddavila0
---

LHC data is constantly beign moved between computing and storage sites
to support analysis, processing, and simluation; this is done at a scale
that is currently unique within the science community.  For example, the
CMS experiment on the LHC manages approximately 200PB of data and, on a
daily basis, moves 1PB between sites.

Historically, this has been done with the GridFTP protocol; as we look
to the increased data volumes of HL-LHC and GridFTP becomes increasingly
niche, the LHC community is looking for alternate mechanisms and protocols
to move data.  The IRIS-HEP DOMA area - in collaboration with the WLCG DOMA
activity - is investigating the use of HTTP for bulk data transfer.

<div class="card" style="width: 40rem;">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/tpc-over-http.png" alt="TPC rates from testing">
  <div class="card-body">
   <h5 class="card-title">Bandwidth achieved from standalone testing</h5>
   <p class="card-text">The above graph shows data movement rates (up to 24Gbps) for a single host, achieved during
   standalone tests; a typical LHC site will load-balance across multiple hosts in order to saturate
   available network links.
   </p>
  </div>
</div>

Over the past months we have been increasingly enabling sites to support the
HTTP protocol to move data between sites. Our initial goal was set to get one
site to get more that 30% of its data using the HTTP protocol.

<div class="card" style="width: 40rem;">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/gftp-vs-http.png" alt="GridFTP vs HTTP">
  <div class="card-body">
   <h5 class="card-title">Percentage of data transfered to UCSD using GridFTP and HTTP</h5>
   <p class="card-text">The above shows the amount of data transferred to UCSD
    using the GridFTP protocol with respect to HTTP over the perio of time
    of one month between  May 15 and June 15th of 2020.
   </p>
  </div>
</div>

