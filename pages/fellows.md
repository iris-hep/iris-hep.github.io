---
permalink: /fellows.html
layout: default
title: IRIS/HEP Fellows Program
---

# IRIS-HEP Fellows Program

### We are now accepting proposals for the 2020-2021 academic year (fall, winter, spring)

  People are the key to successful software. IRIS-HEP aims to promote the
development of advanced research software skills by providing opportunities
for undergraduate and graduate students to connect with mentors within the
larger HEP and Computational/Data Science community. At the same time, we aim
to promote software as a collaborative activity and encourage collaborations
which engage individuals in ways that maximize their potential and their
potential impact on the community.

  In order to accomplish these goals, IRIS-HEP has created a Fellow program.
IRIS-HEP Fellows will spend some number of months working closely with a 
mentor on an R&D topic relevant to the Institute. Possible software R&D areas 
include:

  * [Analysis Systems](/as.html)
  * [Innovative Algorithms](/ia.html)
  * [Data Organization, Management and Access](/doma.html)
  * [Scalable Systems](/ssl.html)
  * [Tools and Material to support Training activities](/ssc.html)
  * [Service containerization, DevOps, security, service monitoring, and accounting](/osglhc.html)
  * [Network monitoring and analytics](/osglhc.html)

It is *not* required that the mentors are IRIS-HEP team members, any
appropriate mentor from the larger community working in one of these areas
can be part of the program.

Two types of IRIS-HEP Fellows are possible:

  * **IRIS-HEP Undergraduate Fellows** - Undergraduate fellows work with a mentor to develop research software relevant for HEP in one of the R&D areas listed above. Undergraduate fellows will receive a stipend, paid monthly, during their fellowship.  

  * **IRIS-HEP Graduate Fellows** - Masters or Ph.D. Graduate fellows work with a mentor to develop research software relevant for HEP in one of the R&D areas listed above. Graduate fellows will receive a stipend, paid monthly, during their fellowship. They should not in general have support via a teaching or research assistant position during the fellowship period.

Due to COVID-19 restrictions, no travel or subsistence payments can currently
be paid to support co-location of either Undergraduate or Graduate Fellows with mentors.

**Duration of fellowship and total stipend:** An IRIS-HEP fellowship will pay up to 3 FTE-months (full time equivalent) at $2000/month. As full time research software activities are not consistent with taking classes during the academic year (as opposed to summer), most fellows will work a smaller time fraction over a larger number of calendar months. (For example, half-time for 6 months.) Applicants should include a proposed time profile for their activities in their proposal, as well as note their academic course load and/or any other activities taking significant time.

  Examples fellows in a related program can be found on the [DIANA/HEP Fellow webpage](http://diana-hep.org/pages/fellows.html) and example projects of interest in the HEP community can be found on the [HEP Software Foundation Google Summer of Code (HSF GSoC) webpage](https://hepsoftwarefoundation.org/activities/gsoc.html). While GSoC is a separate program, funded by Google, many of the projects could also be appropriate for IRIS-HEP Fellows if they are within the R&D areas listed above.

**Some of the currently open IRIS-HEP fellow projects can be found [here](/fellow_projects.html)**.
Interested prospective fellows and/or mentors can also write to fellows@iris-hep.org for more information.

Prospective fellows will eventually apply (to fellows@iris-hep.org) by providing:

 * A CV
 * A short proposal.  In the proposal you should briefly describe the software development activity that you would like to pursue, and how that activity will enhance your own and other people's research activities. Note also the intended software project or person with whom you will collaborate as mentor. The proposal should be short, typically no more one page to describe the project and then a short timeline with deliverables (see also examples from previous fellows). The timeline should also include the proposed FTE effort fractions by month (not to exceed 3 FTE-months total) and information on other major activities (coursework load, etc.)

*Applications from women and members of underrepresented groups in STEM activities are particular encouraged to apply.*

IRIS-HEP Fellow positions will be awarded in a rolling fashion based on submitted project proposals. All proposals submitted before Friday, 29 October, 2020 will receive full consideration.  

# IRIS-HEP Current Fellows (Summer 2020)

[Former IRIS-HEP Fellows](/former-fellows.html)

<div class="container-fluid">
  <div class="row">
    {% assign current_fellows_start = '2020-05-01' | minus: 7257600 | date: '%F' %}
    {% assign sorted = site.pages | sort_natural: 'title' %}
    {% for mypage in sorted %}
      {%- if mypage.dates.first.start -%}
        {% assign page_start_date = mypage.dates.first.start | date: '%F' %}
      {%- else -%}
        {% assign page_start_date = mypage.dates.start | date: '%F' %}
      {%- endif -%}

      {% if mypage.pagetype == 'fellow' and page_start_date >= current_fellows_start %}
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


