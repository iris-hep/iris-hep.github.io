---
permalink: /projects/osg-networking.html
layout: project
title: OSG Network Monitoring
shortname: osg-networking
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Provide network monitoring for LHC and OSG sites
maturity: Deployed
maturity-note:
focus-area: osglhc
position: -1
team:
- smckee
- djw8605
- "[Petya Vasileva](https://www.researchgate.net/profile/Petya-Vasileva-2)"
- "[John Thiltges](https://hcc.unl.edu/contact-us)"
---


The [OSG Network Monitoring](https://osg-htc.org/networking/) team designs, deploys, and maintains an infrastructure for collecting and using network monitoring data coming from [LHC](https://home.cern/science/accelerators/large-hadron-collider), [OSG](https://osg-htc.org/), and other collaborations and sites around the world.


### Activities

-   **Network Pipeline Development** Our team, using feedback from our operating experience, works to upgrade and evolve our network data pipeline to provide near real-time metrics for our analytics and visualization tools.
-   **Operating the Network Pipeline** We need to monitor and maintain our global network pipeline, starting from the data source ([perfSONAR toolkits](https://docs.perfsonar.net/#perfsonar-toolkit)) to all data destinations. The maintenance includes tuning and optimizing component settings to ensure quick, reliable access to the data.
-   **Site and User Support** Using the network measurement data, site administrators and network users can identify potential network issues.  Our team supports them in triaging the initial problem reports to either rule out a network issue, suggest next steps in the diagnosis, or sometimes identifying the root cause.
-   **perfSONAR Deployment**  Our network monitoring infrastructure critically depends upon deploying and properly configuring [perfSONAR](https://docs.perfsonar.net/) to make network measurements to and from each site.  We advise users on best practices and help diagnose perfSONAR issues.
-   **Documentation for Network Tools and Services** The team maintains [documentation](https://osg-htc.org/networking/) on the OSG website as well as additional documentation for our tools and services.
-   **Community Engagement** Since OSG, and our WLCG partners, serve the broader research and education community, we work to attend relevant community meetings and present on our tools and services.
-   **Training** To help train the next generation of network cyberinfrastructure specialists, we run a weekly meeting, bringing together undergraduates, graduate students, team members and project leaders to discuss our work, plans and effort.

### Accomplishments

![OSG Network Data Pipeline](/assets/images/OSG-net-pipeline.png){:style="display:block; margin-left: auto; margin-right: auto; width: 65%"}
-   **Network Data Pipeline:** We have created and evolved a robust network data pipeline which continuously gathers data from more than 250 perfSONAR toolkits world-wide and sends it to multiple locations supporting analysis, visualization and backup.
-   **Alerting and Alarming Service:** Over the last year we have created an [alerting and alarming service](https://aaas.atlas-ml.org) for our network data.  Any user can authenticate with their institutional credentials and select various types of alerts to subscribe to.
-   **Toolkit Information Server:**
We created a web service that serves as a central location for finding network related tools, documentation and applications at
[ToolKitInfo](https://toolkitinfo.opensciencegrid.org/).
-   **Network Data User Interfaces:** With the extensive set of network data we collect, we have also worked to provide various user interfaces to allow easy exploration and visualization of the data.   We have created Kibana and Grafana dashboards and stand-alone applications like [TRACER](https://perfsonar.uc.ssl-hep.org/) and [pS-Dash](https://ps-dash.uc.ssl-hep.org/sites), all findable via the Toolkit Info link above.

### Collaborations

This project collaborates and has collaborated with a number of projects including:
-   **SAND** (Service Analysis and Network Diagnosis) (2017-2021) [https://sand-ci.org/](https://sand-ci.org/), NSF Grant #1827116):
-   **WLCG Throughput Working Group:** (2014-Ongoing) [https://twiki.cern.ch/twiki/bin/view/LCG/NetworkTransferMetrics](https://twiki.cern.ch/twiki/bin/view/LCG/NetworkTransferMetrics)
-   **HEPiX Network Function Virtualization Working Group:** (2018-2020) see [final report](https://zenodo.org/record/3741402#.YmGFMdrMJD8)
-   **Research Networking Technical Working Group:** (2019-Ongoing) see [charter](https://zenodo.org/record/6470973#.YmGDK9rMJD8)
-   **WLCG Monitoring Task Force** (2021-Ongoing) [https://twiki.cern.ch/twiki/bin/view/LCG/](https://twiki.cern.ch/twiki/bin/view/LCG/MonitoringTaskForce)
-   **WLCG DOMA Working Group** (2020-Ongoing) [https://twiki.cern.ch/twiki/bin/view/LCG/DomaActivities](https://twiki.cern.ch/twiki/bin/view/LCG/DomaActivities)

