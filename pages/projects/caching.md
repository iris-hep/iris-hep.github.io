---
permalink: /projects/caching.html
layout: project
title: Caching
shortname: caching
pagetype: project
image: logos/xcache.png
blurb: CMS caching the most used datasets for final analysis
focus-area: doma,osglhc
team:
 - bbockelm
 - efajardo
 - sfiligoi
 - fkw88
 - osschar
---

A great portion of CMS analysys use the same datasets (miniAOD and miniAODSim). Moreover
they run over each dataset several times hence caching becomes an opportunity to do a better
use of CPU (reduce latency) and network (reduce traffic and placing of data). These regional caches
store on demand certain datasets so only files that are accessed are stored. UCSD Tier 2 and Caltech Tier 2
joined forces to create and mantain a regional cache that has benefited all CMS SoCal researches (including
ones on University of California Riverside). 

Production caches have shown to save up to three times the bandwidth. Serving to clients a combined 30Gbps while
only consuming 10Gbps from the WAN.

See for example this [presentation](https://indico.cern.ch/event/760850/contributions/3156949/attachments/1724585/2785286/SoCalCache.pdf)

![TPC over HTTPS](/assets/images/tpc-over-http.png)

{% include list_project_team.md team=page.team%}

{% include list_project_presentations.md shortname=page.shortname %}

{% include list_project_publications.md shortname=page.shortname %}
