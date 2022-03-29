---
permalink: /projects/osg-software.html
layout: project
title: OSG Software and Release
shortname: osg-software
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Provide integrated software for running dHTC services
position: -3
focus-area: osglhc
team:
- brianhlin
- edquist
- matyasselmeci
- timtheisen
---

The [OSG Software and Release](https://opensciencegrid.org/technology/) team produces and supports the integrated
software systems that comprise the OSG fabric of production services.

### Activities

-   **Software curation:** the team works with external software providers, ensures the continued functionality of
    abandoned software, and develops tools to fill any gaps to provide a software stack suitable for WLCG sites.
    This software stack is distributed through packages used widely by the community, such as RPMs and container images.

-   **Integration testing:** the team coordinates tests of the integrated software stack among internal staff, external
    stakeholders, and automated means.

-   **Site documentation:** the team maintains [documentation](https://opensciencegrid.org/docs/) for sites contributing
    to the WLCG.

-   **Registration:** the team provides tools for sites to register services and their downtimes with the WLCG.

### Major Accomplishments

-   **Authentication and transfer protocol transitions:** the OSG Software and Release team has been working with the
    [DOMA group](../focus-area/doma.md) to lead the transition to a bearer token-based authentication and authorization
    infrastructure and HTTP/S-based transfer protocol.

-   **Container images:** the OSG Software and Release team has supported the LHC community’s exploration into DevOps
    deployment models by distributing select production services as container images.
    In particular, the team developed and maintains the [caching](caching.md) container image used by multiple LHC experiments.
    The team follows a strategy of providing a common base container across all communities, plus community-specific refinements.
    The team currently supports three communities, U.S. ATLAS, U.S. CMS, and the general OSG community, with [caching](caching.md) container images.

-   **Streamlining the release process:** to get new software into the hands of site administrators more quickly, the
    team has implemented rolling-style releases along with a policy to make release candidates available more quickly.
