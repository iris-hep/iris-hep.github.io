---
permalink: /projects/tpc.html
layout: project
title: Third Party Copy
shortname: tpc
pagetype: project
image: logos/tpc.png
blurb: Envisioning a new way to move LHC data
focus-area: doma,osglhc
team:
 - bbockelm
 - efajardo
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


{% include list_project_team.md team=page.team%}

{% include list_project_presentations.md shortname=page.shortname %}

{% include list_project_publications.md shortname=page.shortname %}
