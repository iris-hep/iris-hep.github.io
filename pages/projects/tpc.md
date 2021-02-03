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

<br>
Over the past months we have been increasingly enabling sites to support the
HTTP protocol to move data between sites. Our initial goal was set to get one
site to get more that 30% of its data using the HTTP protocol.

For CMS, we have picked 2 sites: Nebraska and UCSD to be the ones leading the transition by
using the 'davs' protocol for all their incoming production transfers from the many sites which
can support such protocol.

<br>
<div class="card" style="width: 40rem;">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/gftp-vs-http.png" alt="GridFTP vs HTTP">
  <div class="card-body">
   <h5 class="card-title">Percentage of data transfered to UCSD using GridFTP and HTTP</h5>
   <p class="card-text">The above shows the amount of data transferred to UCSD
    using the GridFTP protocol with respect to HTTP during July 2020.
   </p>
  </div>
</div>

<br>
TPC Dashboards for Nebraska and UCSD can be found here:

 * [Nebraska](https://monit-grafana.cern.ch/d/aDc1qQwZk1/tpc-over-xrootd-at-nebraska?orgId=11)
 * [UCSD](https://monit-grafana.cern.ch/d/aDc1qQwZk/tpc-over-xrootd-at-ucsd?orgId=11)

<br>
On the ATLAS side, the transition has started to ramp up with 3 participating sites:
AGLT2, PragueLCG2 and SLAC.

<br>
<div class="card" style="width: 40rem;">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/tpc-breakdown-atlas.png" alt="Atlas protocol breakdown">
  <div class="card-body">
   <h5 class="card-title">Protocol breakdown for transfers at: PragueLCG2 and AGLT2 </h5>
   <p class="card-text">The above shows the percentage of data transferred using each of the available protocols
    for the sites: PrageLCG2 and AGLT2 during July 2020.
   </p>
  </div>
</div>

<br>
Important links about the project can be found here:

 * [Third Party Copy](https://twiki.cern.ch/twiki/bin/view/LCG/ThirdPartyCopy)
 * [DCache instructions](https://twiki.cern.ch/twiki/bin/view/LCG/DCacheConfig)
 * [XRootD instructions](https://twiki.cern.ch/twiki/bin/view/Main/XRootDoverHTTP)

