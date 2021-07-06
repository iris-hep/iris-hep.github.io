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
 - ddavila0
---

LHC data is constantly beign moved between computing and storage sites
to support analysis, processing, and simluation; this is done at a scale
that is currently unique within the science community.  For example, the
CMS experiment on the LHC manages approximately 200PB of data and, on a
daily basis, moves 1PB between sites.  Across all four experiments, the global
data movement is regularly peaks above 250Gbps in 2021 -- and this is without
the LHC accelerator taking new data!

The HL-LHC promises a data deluge: we will need to modernize the infrastructure
to sustain at least 1Tbps by 2027 and, likely, peeking at twice that
level.
Historically, bulk data movement has been done with the GridFTP protocol; as the community looks
to the increased data volumes of HL-LHC and GridFTP becomes increasingly
niche, there is a need to use modern software, protocols, and techniques
to move data.  The IRIS-HEP DOMA area - in collaboration with the [WLCG DOMA](https://twiki.cern.ch/twiki/bin/view/LCG/ThirdPartyCopy)
activity - is helping the LHC and HEP in general transition to using HTTP for bulk data transfer.



<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/tpc-over-http.png" alt="TPC rates from testing">
  <div class="card-body">
   <h5 class="card-title">How fast is HTTP?</h5>
   <p class="card-text">The above graph shows data movement rates (up to 24Gbps) for a single host, achieved during
   standalone tests; a typical LHC site will load-balance across multiple hosts in order to saturate
   available network links.  With a sufficiently performant HTTP server, we have
   observed the protocol can go as quickly as the underlying network infrastructure.
   </p>
  </div>
</div>

<br>
During the initial phase of IRIS-HEP, the team worked with a variety of
implementations to improve code and ensure interoperability.  The first goal
was to get all commonly-used storage implementations for the LHC to provide
an HTTP endpoint.  Initially, the goal was set to get one
site to get more that 30% of its data using the HTTP protocol.  This was
accomplished in 2020; for 2021, the goal is to have every LHC _site_ to use
HTTP-TPC.

For CMS, we have picked 2 sites: Nebraska and UCSD to be the ones leading the transition by
using the 'davs' protocol for all their incoming production transfers from the many sites which
can support such protocol.

<br>
<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/gftp-vs-http.png" alt="GridFTP vs HTTP">
  <div class="card-body">
   <h5 class="card-title">Percentage of data transfered to UCSD using GridFTP and HTTP</h5>
   <p class="card-text">The above shows the amount of data transferred to UCSD
    using the GridFTP protocol with respect to HTTP during July 2020.
   </p>
  </div>
</div>
<br>

The next goal was set to have a single site having 50% of all its data being transferred via HTTPS.
<br>
<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/tpc-nebraska-davs.png" alt="HTTPS vs non-HTTPS">
  <div class="card-body">
   <h5 class="card-title">Percentage of data transfered to/from Nebraska via HTTPS vs non-HTTPS</h5>
   <p class="card-text">The above shows the amount of production data transferred to and from Nebraska
    using HTTPS with respect to non-HTTPS during April 2021.
   </p>
  </div>
</div>
<br>

<br>
On the ATLAS side, the transition has taken a faster pace having that most of their sites have adopted an HTTPS endpoint.

<br>
<div class="card" style="width: 40rem; margin: auto">
  <img class="card-img-top" style="object-fit: contain"  src="/assets/images/tpc-atlas-breakdown_042021.png" alt="Atlas protocol breakdown">
  <div class="card-body">
   <h5 class="card-title">Protocol breakdown for transfers at all ATLAS sites </h5>
   <p class="card-text">The above shows the percentage of data transferred among all sites (excluding tape endpoints) using each of the available protocols during April 2021.
   </p>
  </div>
</div>

<br>
<h3>More Information</h3>

 * [Third Party Copy](https://twiki.cern.ch/twiki/bin/view/LCG/ThirdPartyCopy)
 * [DCache instructions](https://twiki.cern.ch/twiki/bin/view/LCG/DCacheConfig)
 * [XRootD instructions](https://twiki.cern.ch/twiki/bin/view/Main/XRootDoverHTTP)
