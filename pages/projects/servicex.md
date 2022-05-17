---
permalink: /projects/servicex.html
layout: project
title: ServiceX
shortname: servicex
pagetype: project
image: logos/ServiceX-Color-Transparent.png
logowidth: 10%
blurb: Delivering columnar data on demand
maturity: Testing
maturity-note:
github: https://github.com/ssl-hep/ServiceX
start-date: 2019-04-17
focus-area: doma
team:
 - AndrewEckart
 - BenGalewsky
 - robrwg
 - Lindsey Gray
 - msneubauer
 - jpivarski
 - Ilija Vukotic
 - gordonwatts
 - mweinberg2718
 - MichaelJohnson
---

The sheer volume of HL-LHC events will emphasize the need for rapid data reduction and
the ability to pull individual columns from complex datasets into high-speed
data analysis facilities.

[ServiceX](https://github.com/ssl-hep/ServiceX) is a data extraction and
delivery delivery service. Users provide a dataset identifier and a selection
statement that specifies filters and columns. ServiceX brings up parallel
workers to open the files in the dataset and uses experiment approved frameworks
to extract the data and store it in popular columnar file formats for easy
analysis using familiar tooling.

<p align="center">
  <img src="/assets/images/ServiceXWorkflow.png">
</p>

## Benefits
* ServiceX can be co-located with datasets to provide fast and efficient data
reduction strategies.
* Interface is easy to learn and the processes are extremely reliable to make it
easy for analyzers to get their job done without needing to learn complex
libraries and closely monitor hand-written batch jobs
* Extracts data from experiment-specific data formats using approved frameworks.
* Data can be provided as popular and powerful [Awkward Arrays](/projects/awkward.html) which integrates with the ecosystem of analysis tools within IRIS-HEP.
* Results can be written to an object store or to [SkyHook Volumes](skyhookdm.html)
* Results are cached locally to allow for easy straightforward reuse of data.
* Transformers are run out of tagged docker images to allow for precise reproducibility
* Works seamlessly as a data backend to _Coffea_ and TRExFitter analysis tools


## Performance
Recent testing on 10 TB xAOD input sample where we requested 100 columns from 7
collections (~30% of file). We were able to scale up to 1,000 workers the
[River SSL Cluster](/ssl.html) to get results in less than 30 minutes. Output rate was in
excess of 300MB/s.
<p align="center">
  <img src="/assets/images/ServiceXPerformance.png">
</p>





## How It Works
The dataset lookup service is extensible and developers can create new services
to meet the needs of a specific community. Currently, datasets can be requested
using a Rucio DID or as a reference to a CERN OpenData dataset. Users can also
provide a set of accessible file URLs.

The files located by the lookup service are passed to transformer workers which
are spun up to filter data and extract columns. These transformer workers run
out of docker images which are based on experiment approved images. Their
operation is controlled by a low-level selection language called
[Qastle](https://github.com/iris-hep/qastle). This language allows for filtering
of events as well as data projections and simple calculations of derived values.

Qastle is useful for concisely communicating these transform requests, however
is not intended for end-users. Instead, there are translators that transpile
high level selection languages. There are currently transpilers for
[func_adl](https://github.com/iris-hep/func_adl_servicex) and for the
[T-Cut language](https://github.com/ssl-hep/TCutToQastleWrapper).

## Architecture
ServiceX uses a micro-service architecture that runs on a Kubernetes cluster.
Users interact with the service via a REST interface provided by a
[Flask App](https://github.com/ssl-hep/ServiceX_App). The app also provides
orchestration of the other components.

The Qastle queries are translated into event framework code by code generator
services. These can generate C++ or Python Uproot code which is executed by
the transformers.

The transformers are launched as an auto-scaling job by the flask app. Each
worker is fed from a transactional RabbitMQ queue.

## Reference
Full documentation at [the Servicex ReadTheDocs pages](https://servicex.readthedocs.io/en/latest/).

<a href="https://indico.cern.ch/event/773049/contributions/3474438/attachments/1935769/3207764/BenGalewskyCHEP2019.pdf"><img width="10%" src="/assets/images/BenGalewskyCHEP2019.png" alt="poster" /></a> [ServiceX talk at CHEP 2019](https://indico.cern.ch/event/773049/contributions/3474438/attachments/1935769/3207764/BenGalewskyCHEP2019.pdf)

[ServiceX talk at HSF DAWG -- DOMA Access meeting](/assets/pdf/weinbergServiceX200323.pdf)

## Keep in Touch
Sign up for the [ServiceX Mailing List](http://eepurl.com/hwqdED) to be informed
of new releases of the system.
