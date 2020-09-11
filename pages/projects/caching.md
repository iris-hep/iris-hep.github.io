---
permalink: /projects/caching.html
layout: project
title: Caching Analysis Data
shortname: caching
pagetype: project
image: logos/xcache.png
blurb: Cached-based placement of analysis datasets.
focus-area:
 - doma
 - osglhc
team:
 - bbockelm
 - efajardo
 - sfiligoi
 - fkw888
 - osschar
 - ddavila0
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

## Repositories

Currently XCache is distributed by the OSG both in the form of RPM and docker images.
The following are the corresponding repositories where the base code can be found:

 * [github.com/opensciencegrid/xcache](https://github.com/opensciencegrid/xcache)
 * [github.com/opensciencegrid/docker-xcache](https://github.com/opensciencegrid/docker-xcache)


## Reports

 * [Report on cache usage on the WLCG and potential use cases and deployment scenarios for the US LHC facilities](https://github.com/iris-hep/iris-hep.github.io-source/blob/master/assets/pdf/Cache_Usage_on_the_WLCG.pdf)
 * [Report on LHC data access patterns, data uses, and intelligent caching approaches for the HL-LHC (draft)](https://github.com/iris-hep/iris-hep.github.io-source/blob/master/assets/pdf/LHC_Data_Access_Patterns_draft.pdf)
