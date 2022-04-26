---
permalink: /projects/osg-software.html
layout: project
title: OSG Software and Release
shortname: osg-software
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: Provide integrated software for running dHTC services
maturity: Deployed
maturity-note:
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

-   **Integration testing:** the team coordinates tests of the integrated software stack among internal staff and
    external stakeholders.
    Additionally, the team maintains and monitors nightly automated tests that exercise different integrated software
    installations, varying software versions, installation methods, and hosting operating systems (OS).

-   **Site documentation:** the team maintains [documentation](https://opensciencegrid.org/docs/) that outline how to
    install, configure, and update software; how to address common problems; detailed notes about new software releases
    and any known issues; where to find help; and policy information regarding the OSG Software Stack.

-   **Registration:** the team provides tools for sites to register site contacts, services, and downtimes with the WLCG.

-   **Community enagement:** members of the team attend and run regular meetings with members of U.S. LHC, external
    software providers, and other IRIS-HEP teams to ensure that the software stack is responsive to all stakeholder needs.

### Major Accomplishments

-   **Authentication and transfer protocol transitions:** the OSG Software and Release team has been working with the
    [DOMA group](../focus-area/doma.md) to lead the transition to a bearer token-based authentication and authorization
    infrastructure and HTTP/S-based transfer protocol.

    -   **Retirement of OSG 3.5:** OSG 3.5 was the last version of the OSG Software Stack with Globus dependencies
        and its retirement marks the completion of the years-long transition from X.509 to token-based pilot job
        authentication.
        In particular, this meant the end of OSG Software support for GridFTP, GSI, Hadoop, and LCMAPS.
        This version of the software stack provided the bridge between the two different authentication methods,
        supporting both concurrently, and allowed for sites to become more familiar with the new technologies.

    -   **Release of OSG 3.6** OSG 3.6 is the first version of the OSG Software Stack without any Globus
        dependencies.
        Triggered by the 2017 announcement that Globus was ending support for their open-source Globus Toolkit, the
        release of OSG 3.6 is the culmination of years of planning and development, and includes versions of HTCondor,
        HTCondor-CE, and XRootD that rely on token-based authentication instead of X.509 proxy authentication.
        In addition to the changes in software, the team made a number of release policy changes to ease the transition
        to token-authentication and to reflect the increasingly agile operational models being explored by the LHC.

-   **Enterprise Linux 8 support:** the OSG Software Stack is built upon RedHat Enterprise Linux (EL) compatible
    operating systems and new operating system versions require rebuilding and verification of the entire software
    stack.
    With the release of EL 8, RedHat announced a change in support model for CentOS, a popular open source EL-compatible
    OS, promising quicker updates but shorter support lifecycles.
    The OSG Software Team worked with the LHC community to test this new version of CentOS as well as other open-source
    alternatives and provided guidance for US LHC sites.
    EL 8 also included a major version upgrade of Python from 2 to 3, resulting in major development efforts by the team
    and coordination of external software providers.

-   **Streamlining the release process:** to get new software into the hands of site administrators more quickly, the
    team has implemented rolling-style releases along with a policy to make release candidates available more quickly.

    The OSG Software and Release team has also supported the LHC community’s exploration into DevOps deployment models
    by distributing select production services as container images.
    In particular, the team developed and maintains the [caching](caching.md) container image used by multiple LHC
    experiments.
    The team follows a strategy of providing a common base container across all communities, plus community-specific
    refinements for U.S. ATLAS and U.S. CMS.

-   **Retirement of OSG 3.4:** Retirement of older software is the other side of the coin of maintaining the OSG
    Software Stack that gives our community timelines to transition to new technologies while ensuring
    production-readiness of the distributed computing infrastructure. In particular, the retirement of OSG 3.4 meant the
    end of support for software such as edg-mkgridmap, GUMS, BeStMan, and VOMS Admin Server packages as well as the
    end-of-life of RedHat Enterprise Linux 6 based operating systems.

-   **Provide regular software updates:** to ensure the security and continued functionality of the integrated OSG
    Software Stack, the Software Team provides periodic updates to its constituent software components.
    Over the calendar year 2021, the Software Team published 54 releases containing 200 software version updates.
