---
permalink: /projects/caching.html
layout: project
title: Caching Analysis Data
shortname: caching
pagetype: project
image: logos/xcache.png
blurb: Cached-based placement of analysis datasets.
focus-area: doma,osglhc
team:
 - bbockelm
 - efajardo
 - sfiligoi
 - fkw88
 - osschar
---


Significant portions of LHC analysis use the same datasets, running
over each dataset several times.  Hence, we can utilize cache-based approaches
as an opportunity to efficiency of CPU use (via reduced latency) and network
(reduce WAN traffic). We are investigating the use of regional caches to
store, on-demand, certain datasets.   For example, the UCSD CMS Tier-2 and Caltech CMS Tier-2
joined forces to create and mantain a regional cache that benefits all southern California CMS
researchers.

These [in-production caches](https://indico.cern.ch/event/760850/contributions/3156949/attachments/1724585/2785286/SoCalCache.pdf) have shown to save up to a factor of three of WAN bandwidth compared with
traditional data management techniques.

