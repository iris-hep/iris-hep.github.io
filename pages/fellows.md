---
permalink: /fellows.html
layout: default
title: IRIS/HEP Fellows Program
---

# IRIS-HEP Fellows Program

**Applications for Summer 2021 are now completed. Please check back for Fellow opportunities for the 2021-2022 academic year.**

  People are the key to successful software. IRIS-HEP aims to promote the development of advanced research software skills by providing opportunities for undergraduate and graduate students to connect with mentors within the larger High Energy Physics (HEP) and Computational/Data Science community. At the same time, we aim to promote software as a collaborative activity and encourage collaborations which engage individuals in ways that maximize their potential and their potential impact on the community.
  To accomplish these goals, IRIS-HEP has created a Fellows program.
IRIS-HEP Fellows will spend some number of months working closely with a
mentor on an R&D topic relevant to the Institute.

**Which R&D areas are of interest to IRIS-HEP?** - We are particularly interested in software R&D areas where IRIS-HEP personnel are active, but may also consider proposals for other software R&D topics of larger relevance to the HEP community. The IRIS-HEP activities include:

  * [Analysis Systems](/as.html)
  * [Innovative Algorithms](/ia.html)
  * [Data Organization, Management and Access](/doma.html)
  * [Scalable Systems](/ssl.html)
  * [Tools and Material to support Training activities](/ssc.html)
  * [Service containerization, DevOps, security, service monitoring, and accounting](/osglhc.html)
  * [Network monitoring and analytics](/osglhc.html)

(Click through the links above to see the specific projects on which we are working.)
It is *not* required that the mentors are IRIS-HEP team members, or that
a specific project be one for which IRIS-HEP personnel are active. Any
appropriate mentor from the larger community working in one of
these areas can be part of the program.

**Who should apply to the Fellows program?** - Are you reasonably comfortable
with basic programming through skills acquired (for example) from coursework or
dedicated training activities? Are you interested in building on those skills to gain experience through contributions to cutting edge open
source research software projects? Then the IRIS-HEP Fellows program could be for you. Prior physics knowledge is helpful, but not required. *Applications from women and members of underrepresented groups in STEM activities are particularly encouraged.*

<!---
Two types of IRIS-HEP Fellows are possible:

  * **IRIS-HEP Undergraduate Fellows** - Undergraduate fellows work with a mentor to develop research software relevant for HEP in one of the R&D areas listed above. Undergraduate fellows will receive a stipend, paid monthly, during their fellowship.

  * **IRIS-HEP Graduate Fellows** - Masters or Ph.D. Graduate fellows work with a mentor to develop research software relevant for HEP in one of the R&D areas listed above. Graduate fellows will receive a stipend, paid monthly, during their fellowship. They should not in general have support via a teaching or research assistant position during the fellowship period.

Due to COVID-19 restrictions, no travel or relocation subsistence costs can currently be paid to support co-location of either Undergraduate or Graduate Fellows with mentors. Fellows will in general work remotely at a distance with their mentors, unless they happen to be at the same institution.
-->

For Summer 2021 we are happy to accept proposals for IRIS-HEP Fellows from undergraduate students and
graduate students that do not have a research assistantship (e.g. Masters students).
Due to COVID-19 restrictions, no travel or relocation subsistence costs can currently be paid to support co-location of either Fellows with mentors. Fellows will in general work remotely at a distance with their mentors, unless they happen to be at the same institution. Applicant students should be associated with a US university.

<!--
**Duration of fellowship and total stipend:** An IRIS-HEP fellowship will pay up to 3 FTE-months (full time equivalent) at $2000/month. As full time research software activities are not consistent with taking classes during the academic year (as opposed to summer), most fellows will work a smaller time fraction over a larger number of calendar months. (For example, half-time for 6 months.) Applicants should include a proposed time profile for their activities in their proposal, as well as note their academic course load and/or any other activities taking significant time.
-->


**Duration of fellowship and total stipend:** An IRIS-HEP fellowship will pay up to 3 FTE-months (full time equivalent) at $2000/month during Summer 2021. We have some flexibility to accommodate different summer schedules and lengths.


**Projects:** Research software projects should in general be in the R&D areas listed above or (in some cases) be projects of more general interest to the HEP community. How do you find a project? There are several possibilities:

  * Examples of currently open IRIS-HEP Fellow projects can be found **[on a separate webpage](/fellow_projects.html)**. These projects are of interest to IRIS-HEP researchers (who may then act as mentors). You can write to the mentor listed to discuss or reach out to fellows@iris-hep.org for more information. *This page may be updated from time to time, so check back and reload.*
  * Additional example projects of interest in the wider HEP community can also be found on the [HEP Software Foundation Google Summer of Code (HSF GSoC) webpage](https://hepsoftwarefoundation.org/activities/gsoc.html). While GSoC is a separate program, funded by Google, many of the projects could also be appropriate for IRIS-HEP Fellows if they are related to the R&D areas listed above.
  * Recent Fellows and links to descriptions of their projects can be found below in the list of current and past Fellows. In some cases, there may be continuations of those projects.
  * Some additional projects for Summer 2021 are listed on the [DIANA/HEP Fellows webpage](http://diana-hep.org/pages/fellows.html) and on the open projects page of the [Compiler Research](https://compiler-research.org/open_projects) project
  * You can explore the links above to the IRIS-HEP R&D research activities. Most IRIS-HEP active projects list contacts with whom you can discuss to bring your own ideas.

Prospective fellows are encouraged to **contact specific mentors** listed on the project pages above.
If you have a idea for a project which excites you, but do not find similar examples or are not sure which mentor to contact, please do not hesitate to contact the IRIS-HEP fellows@iris-hep.org mailing list. The lists above are not exhaustive. We will help you link up with possible mentor candidates!

Prospective fellows will eventually apply (to fellows@iris-hep.org) by providing:

 * A CV. Please include both educational status and any software-relevant coursework and/or previous software projects and activities.
 * A short proposal.  In the proposal you should briefly describe the software development activity that you would like to pursue, and how that activity will enhance your own and other people's research activities. **Note also the intended software project or person with whom you will collaborate as mentor. Proposals for which an initial plan has been worked out with the mentor will likely rank more strongly.** The proposal should be short, typically no more 1-2 pages to describe the project and then a short timeline with deliverables (see also examples from previous fellows). The timeline should also include the proposed FTE effort fractions by month (not to exceed 3 FTE-months total) and information on other major activities taking significant time (other research activities or jobs, coursework load, etc.)


IRIS-HEP Fellow positions will be awarded in a rolling fashion based on submitted project proposals. All proposals submitted by Sunday, 18 April, 2021, will receive full consideration.

{%- assign active-fellows = false -%}
{%- for mypage in site.pages -%}
    {%- if mypage.pagetype == 'fellow' and mypage.active -%}
       {%- assign active-fellows = true -%}
    {%- endif -%}
{%- endfor -%}

{%- if active-fellows %}
# Current IRIS-HEP Fellows

<div class="container-fluid">
  <div class="row">
    {% assign sorted = site.pages | sort_natural: 'title' %}
    {% for mypage in sorted %}
      {% if mypage.pagetype == 'fellow' and mypage.active %}
         {% assign person = mypage %}

         <div class="card" style="width: 12rem;">
            <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
            <div class="card-body d-flex flex-column">
              <div class="card-text">
                 <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
                 <small>{{person.institution}}</small><br><br>
              </div>
              <div class="card-text mt-auto"><i>
              {% include fellow_dates.html dates=person.dates %}
              </i><br></div>
            </div>
         </div>
      {% endif %}
    {% endfor %}
  </div>
  <br>
</div>

{% endif %}

# Former IRIS-HEP Fellows
<div class="container-fluid">
  <div class="row">
    {% assign sorted = site.pages | sort_natural: 'title' %}
    {% for mypage in sorted %}
      {% if mypage.pagetype == 'fellow' and mypage.active == false %}
         {% assign person = mypage %}

         <div class="card" style="width: 12rem;">
            <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
            <div class="card-body d-flex flex-column">
              <div class="card-text">
                 <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
                 <small>{{person.institution}}</small><br><br>
              </div>
              <div class="card-text mt-auto"><i>
              {% include fellow_dates.html dates=person.dates %}
              </i><br></div>
            </div>
         </div>
      {% endif %}
    {% endfor %}
  </div>
  <br>
</div>
