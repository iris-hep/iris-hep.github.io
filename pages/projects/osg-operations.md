---
permalink: /projects/osg-operations.html
layout: project
title: OSG Operations
shortname: osg-operations
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Operate OSG-LHC services
position: -4
focus-area:
- osglhc
team:
- "[Jeff Dost](https://profiles.ucsd.edu/jeffrey.dost)"
- djw8605
- hzhu16
- zvada
---

The [OSG Operations](https://opensciencegrid.org/operations/) team is responsible for
deploying, configuring, and running the OSG-owned services that contribute to the overall OSG fabric of services.
These central services include the OSG software repositories,
infrastructure for staging and caching data for access across OSG,
the accounting database containing all OSG usage, the open science pool, the gWMS metaschedulung system, compute access points to support individual scientists across all domains of open science,
user and systems administrator facing web pages, among others.

OSG-LHC makes a modest contribution to this overall operations team, focused on the LHC needs. It operates the accounting and monitoring system, [GRACC](https://gracc.opensciencegrid.org), and the CVMFS infrastructure used to create a uniform runtime environment across the heterogenous compute infrastructure.

We note that all the OSG Operations services, including the contributions from OSG-LHC, are used by the wider community of all of open science that benefits from OSG. The operations project of OSG-LHC is thus a direct benefit to the US LHC Operations programs and the wider open science community.

## GRACC

[GRACC](https://gracc.opensciencegrid.org) is the OSG accounting system
that tracks usage for all projects that use OSG software or services.
Within OSG-LHC in particular, and IRIS-HEP more generally, it provides the following functionality:

*   **Accounting of US LHC Commitments to WLCG:**
    The US LHC Operations programs make annual pledges of compute and storage resources to the WLCG. The actually provided resurces are tracked by WLCG, and released in a monthly report by WLCG to the collaborations and funding agencies worldwide. OSG-LHC is responsible for delivering accurate accounting records for the US LHC Operations program resources, including potential HPC allocations, and other resources to WLCG. This includes the entire chain form the sites to WLCG. OSG-LHC provides the software, documentation, and training for site administrators so the latter can deploy the appropriate software to collect accounting records at their site. OSG-LHC works with US LHC Operations program management and WLCG to resolve any potential problems in the accounting. This is an essential service for the US LHC Operations programs to fullfill their MoU commitments to WLCG.

*   **Accounting/Monitoring Infrastructure for Network Performance:**
The OSG Network Monitoring project depends on this accounting infrastructure to provide the collection, and maintenance of network performance records. The architecture of the accounting system includes a commercially operated RabbitMQ message bus as central point where all accounting records transit through. This bus has multiple information consumers, including services at CERN to retrieve network performance records for all of WLCG. OSG-LHC thus provides network performance data to CERN as a service.

*   **Accounting/Monitoring Infrastructure for XCache deployments:**
OSG-LHC collaborates with the XRootD software team and DOMA in IRIS-HEP on providing data access monitoring and accounting information from the XRootD infrastructure deployed by the US LHC Operations programs to the CERN Monit infrastructure, a data analytics infrastructure located at CERN. The records traverse the OSG Operations supported infrastructure to its RabbitMQ bus, and from there to Monit. While we initially focus on data access records to XCache, we see that as the desired architecture for all XRootD services, and OSG operations works with DOMA, the XRootD team, and the US LHC Operations programs on transitioning towards this vision. See the reports listed below for more details on this activity.

<iframe src="https://gracc.opensciencegrid.org/d-solo/000000074/gracc-home?orgId=1&from=1136073600000&to=now&panelId=15" width="1000" height="450" frameborder="0"></iframe>

### Architecture of GRACC

The GRACC ecosystem consists of 5 main components: probes, data collection, message
broker, data sinks and visualization.
It was designed for dHTC in that it supports large rates of records from a large number of different types of probes.
As of Spring 2021, the GRACC message bus receives records at a rate in excess of 100Hz from close to 300 probes.
A diverse set of consumers read record from the bus at more than 200 Hz.


<figure class="figure">
  <img src="/assets/images/GRACCArchitecture.png" class="img-fluid" alt="GRACC Architecture">
  <figcaption class="figure-caption">Figure 1: GRACC Architecture showing: probes on resources, data collection through the GRACC Collector, message broker,  data sinks of Elasticsearch database and backups, and visualization of the data by the OSG and WLCG</figcaption>
</figure>


The probes are from the original Gratia ecosystem. Each supported batch system
(HTCondor, PBS, SLURM, LSF) has a corresponding probe. The probe knows how to query
the batch system for data and convert it to a common format. For example, with HTCondor,
the probe parses the history files of completed jobs. For the SLURM batch system, the probe
queries the SLURM database for completed jobs. The resulting usage records are uploaded
to the GRACC collector via an HTTP POST. All data is buffered locally until successfully
sent to the GRACC data collection service.  The collector service listens for incoming records, parses, and transforms the records into an internal
format. It sends the transformed record to a message broker.

The message broker distributes the records to multiple destinations. The message broker based on the RabbitMQ software. It handles the durability of messaging between
components in the system. It also buffers messages in case of a transient outage.

A GRACC data sink is the LogStash instances that store the data into an ElasticSearch database. The database stores the records for querying and visualization.
Another data sink is the backup infrastructure. Each usage record is automatically backed
up to tape in case of a failure of the database. The usage records can be replayed and the data
base restored from the tape backups.

Visualization of GRACC usage records is done using either Grafana or Kibana visualization tools. The GRACC team maintains numerous preformatted dashboards displaying
usage of the OSG.

**References:**
- Weitzel, D., Bockelman, B., Zvada, M., Retzke, K., & Bhat, S. (2019). GRACC: GRid ACcounting Collector. In EPJ Web of Conferences (Vol. 214, p. 03032). EDP Sciences. [https://doi.org/10.1051/epjconf/201921403032](https://doi.org/10.1051/epjconf/201921403032)
- Retzke, K., Weitzel, D., Bhat, S., Levshina, T., Bockelman, B., Jayatilaka, B., ... & Wuerthwein, F. (2017, October). GRACC: New generation of the OSG accounting. In Journal of Physics: Conference Series (Vol. 898, No. 9, p. 092044). IOP Publishing. [https://doi.org/10.1088/1742-6596/898/9/092044](https://doi.org/10.1088/1742-6596/898/9/092044)
- Levshina, T., Sehgal, C., Bockelman, B., Weitzel, D., & Guru, A. (2014, June). Grid accounting service: state and future development. In Journal of Physics: Conference Series (Vol. 513, No. 3, p. 032056). IOP Publishing. [https://doi.org/10.1088/1742-6596/513/3/032056](https://doi.org/10.1088/1742-6596/513/3/032056)


## Curation of a uniform Runtime Environment via CVMFS

The heterogeneity of OSG comes with considerable challenges to the applications running in this environment. To address these challenges, CERN developed a product, CVMFS, for the LHC community that allows curation of a uniform runtime environment across all compute resources globally. OSG has adopted this approach to support all of open science. OSG-LHC operates part of the infrastructure necessary to achieve this.

## Reports

The OSG Operations team has produced two reports in collaboration with the DOMA group.

-   [XRootD Monitoring Validation](https://doi.org/10.5281/zenodo.3981359)
-   [XRootD Monitoring Scale Validation](https://doi.org/10.5281/zenodo.4688624)
