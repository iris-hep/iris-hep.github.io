---
permalink: /projects/idds.html
layout: project
title: Intelligent Data Delivery Service
shortname: idds
pagetype: project
image: logos/idds.png
blurb: Delivering Data.  Better.
focus-area: doma
team:
 - bbockelm
 - BenGalewsky
 - wguan
---

If HL-LHC is going to process exabytes of data, it needs data access systems
that can deliver.  The HEP community has always focused on delivering bytes
to applications - each application must have an innate understanding of the
data format in order to interpret the byte stream and it must understand the
file naming scheme of the underlying storage.

The intelligent data delivery system is working to raise these semantics to
work on _delivering events_ as opposed to _delivering bytes_.  This allows
an edge service to prepare data for production consumption (filtering out
unnecessary events and objects), the on-disk data format to evolve
independently of applications, and decrease the latency between the application
and the storage.

The IDDS work is an ongoing project within IRIS-HEP in the DOMA and
Analysis Systems area, as well as within the HEP Software Foundation
event delivery group.

## Architecture
![iDDS Architecture](/assets/images/idds_architecture.png){:style="display:block; margin-left: auto; margin-right: auto; width: 75%"}
