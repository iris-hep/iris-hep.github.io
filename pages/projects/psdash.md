---
permalink: /projects/psdash.html
layout: project
title: pSDash
shortname: psdash
pagetype: project
image: logos/psdash.svg
blurb: Tracks network issues based upon the perfSONAR (and related) measurements
maturity: Deployed
maturity-note:
focus-area: osglhc
github: https://github.com/sand-ci/ps-dash
logowidth: 35%
start-date: 2022-10-01
team:
- Marian Babik
- smckee
- petya-vasileva
- Ilija Vukotic
---



### Project description


The OSG and WLCG collaborations have been operating a global Research & Education (R&E) network monitoring infrastructure for more than 10 years.  Currently data from over 230 perfSONAR instances are centrally gathered into an Elasticsearch cluster at the University of Chicago.   This rich dataset should be able to provide visibility into our R&E networks and identify various types of network problems as they occur.

[`pSDash`](https://ps-dash.uc.ssl-hep.org/) is designed to track, visualize, and filter for network issues based upon the perfSONAR and related network monitoring data being gathered by OSG and WLCG services. The project is complementary to the Alarms&Alerts service (for which anyone can subscribe; see below) and currently covers the following problems:
-   **Throughput issues**
-   **High packet loss**
-   **Firewall issues**
-   **Bad clock configurations**
-   **Traceroute issues**
-   **Divergence from the usual path** (based on the AS numbers)
-   And more

You can access the application at [https://ps-dash.uc.ssl-hep.org/](https://ps-dash.uc.ssl-hep.org/)  and subscribe to receive emails about the most recent alarms at [https://aaas.atlas-ml.org/](https://aaas.atlas-ml.org/) (make sure you add a tag if you are interested in specific sites).

[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/sand-ci/ps-dash) pSDash code
[![GitHub Project](https://img.shields.io/badge/GitHub--blue?style=social&logo=GitHub)](https://github.com/sand-ci/AlarmsAndAlerts) Alarms&Alerts Service code


### Contact us

Let us know if you find any issues or if you have comments/suggestions by opening a ticket with OSG support staff: email help@osg-htc.org and request support for networking/pSDash.
