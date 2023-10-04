---
permalink: /projects/osg-security.html
layout: project
title: OSG Security
shortname: osg-security
pagetype: project
image: logos/Iris-hep-5-just-graphic.png
blurb: OSG Cybersecurity team
maturity: Deployed
maturity-note:
position: -2
focus-area: osglhc
team:
- adciu
- jcdrake
---

The OSG Security team works on supporting operational security for OSG infrastructure, software security, incident response, and coordination with OSG’s stakeholders in cybersecurity.

OSG-LHC Security collaborates with WLCG cybersecurity groups and stakeholders, including:

*  **WLCG Federated Operations Security Working Group:**
   This group is working to develop a trust model and policies for federated service operations across the WLCG. An example of federated service operations is support of a centralized deployment team for containerized edge services across a federated container orchestration infrastructure.

*  **WLCG Authorization Working Group:**
   This group focuses on addressing authorization requirements for WLCG experiments and WLCG infrastructure. The transition from identity to capability token based authorization is discussed by this working group.

*  **WLCG shared incident response:**
   OSG-LHC security collaborates with U.S. ATLAS Security, U.S. CMS Security, and the European EGI Computer Security Incident Response (CSIRT) teams to facilitate incident response within the WLCG.

### Accomplishments

-   **Adopting the Trusted CI Framework:** Following NSF guidance in the Major Facilities Guide (2019) and Research Infrastructure Guide (2021) and at the request of the NSF program office for the PATh project, the Security team began work to adopt an overarching cybersecurity framework. In 2021, the team partnered with the NSF Cybersecurity Center of Excellence — Trusted CI — to undergo a review and realignment of its security plan and policies and began the process of adopting and implementing the Trusted CI Framework in late 2021. [TrustedCI Blog Post](https://blog.trustedci.org/2021/03/trusted-ci-begins-engagement-with-path.html).

    -   **Master Information Security Policies and Procedures Revision:** Q2 2022.
    -   **Incident Response Policies and Procedures Revision:** Q1 2022.
    -   **Container Security Policy:** Q4 2019.

-   **Security Exercises:** To improve the security posture of OSG infrastructure and personnel, the OSG Security team conducts a security exercise approximately once per quarter and issues a report with lessons learned and proposed changes. Highlights from the last 3 years include:

    -   **February 2020:** OSGConnect website security review.
    -   **March 2020:** Simultaneous simulated incident response exercise with US-ATLAS and US-CMS security contacts.
    -   **July 2020 and September 2020:** Testing the accuracy and efficacy of communication channels.
    -   **November 2021:** Jira and Freshdesk operational security audit.
    -   **March 2022:** Staff exercise: simulated security incident and response.

-   **Security Announcements:** The Security team monitors vulnerability announcements from major vendors and creates tailored guidance for OSG staff and OSG site security contacts in the event of a major vulnerability. The team also helps distribute alerts for HTCSS and OSG Software packages and images. For a historical perspective, the team maintains [a catalog of past announcements](https://opensciencegrid.org/security/OSGSecurityAnnouncements/).

    -   **2020:** 6 High or Critical announcements sent.
    -   **2021:** 14 High or Critical announcements sent.
    -   **2022:** 10 High or Critical announcement sent (YTD).

-   **Continuous Vulnerability Management:** To minimize the likelihood of a security breach the Security team operates a scanning host which scans public facing OSG infrastructure on a weekly basis and alerts service owners to discovered vulnerabilities. Since beginning weekly scans in 2020, the Security team has worked with service owners to remediate 11 significant vulnerabilities preemptively, while scanning an average of 82 hosts per week.

### Funding

The OSG Security team is funded by IRIS-HEP [NSF OAC-1836650](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1836650) and the Partnership to Advance Throughput Computing (PATh) [NSF OAC-2030508](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2030508). The team maintains [documentation](https://opensciencegrid.org/security/) and [security policies](https://opensciencegrid.org/security/OSGSecurityPolicies/) on the OSG website.
