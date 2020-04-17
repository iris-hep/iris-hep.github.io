---
permalink: /fellows.html
layout: default
title: IRIS/HEP Fellows Program
---

# IRIS-HEP Fellows Program 

  People are the key to successful software. IRIS-HEP aims to promote the 
development of advanced research software skills by providing opportunities 
for undergraduate and graduate students to connect with mentors within the
larger HEP and Computational/Data Science community. At the same time, we aim 
to promote software as a collaborative activity and encourage collaborations 
which engage individuals in ways that maximize their potential and their 
potential impact on the community.

  In order to accomplish these goals, IRIS-HEP has created a Fellow program.
IRIS-HEP Fellows will spend 2-3 months working closely with a mentor on an
R&D topic relevant to the Institute. Possible software R&D areas include:

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

  * **IRIS-HEP Graduate Fellows** - Graduate fellows spend 3 months working with a mentor in the home location of the mentor developing research software relevant for HEP in one of the R&D areas listed above. Fellows are expected to have a base research stipend from their university, but receive a monthly subsistence plus travel expenses from their IRIS-HEP fellowship.
  * **IRIS-HEP Undergraduate Fellows** - Undergraduate fellows work with mentors in their local home institution for 10-12 weeks, either developing or using research software relevant for HEP in the categories listed above. Undergraduate fellows receive a monthly stipend during their fellowship. In some cases, travel support may be available. 

  Examples fellows in a related program can be found on the [DIANA/HEP Fellow webpage](http://diana-hep.org/pages/fellows.html) and example projects of interest in the HEP community can be found on the [HEP Software Foundation Google Summer of Code (HSF GSoC) webpage](https://hepsoftwarefoundation.org/activities/gsoc.html). While GSoC is a separate program, funded by Google, many of the projects could also be appropriate for IRIS-HEP Fellows if they are within the R&D areas listed above.

Interested prospective fellows and/or mentors should write to fellows@iris-hep.org for more information.

Prospective fellows will eventually apply (to fellows@iris-hep.org) by providing:

 * A CV
 * A short proposal.  In the proposal you should briefly describe the software development activity that you would like to pursue, and how that activity will enhance your own and other people's research activities. Note also the intended software project or person with whom you will collaborate and the location where you would need to travel for that collaboration. The proposal should be short, typically no more one page to describe the project and then a short timeline with deliverables (see also examples from previous fellows). 

IRIS-HEP Fellow positions will be awarded in a rolling fashion based on submitted project proposals.

# IRIS-HEP Fellows

<div class="container-fluid">
  <div class="row">
{% assign sorted = site.pages | sort_natural: 'title' %}
{% for mypage in sorted %}
  {% if mypage.pagetype == 'fellow' %}
     {% assign person = mypage %}
     <div class="card" style="width: 12rem;">
        <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
        <div class="card-body d-flex flex-column">
          <div class="card-text">
             <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
             <small>{{person.institution}}</small><br><br>
          </div>
          <div class="card-text mt-auto"><i>{{person.dates}}</i><br></div>
        </div>
     </div>
  {% endif %}
{% endfor %}
  </div>
  <br>
</div>

# Example fellow projects

Applicants should feel free to make their own proposal for a software
project within any of the R&D areas of the Institute. We list here some
specific example topics and projects for which their is a known opportunity
for a Fellow to collaborate. (This is a non-exhaustive list, more to come!)

- **Translating analyses into prototype analysis systems**: This project is situated in the [Analysis Systems](/as.html) focus area. An existing realistic physics analysis will be translated into new prototype analysis systems. The new implementation will be benchmarked and compared to existing traditional approaches. An example analysis for this is the search for [Higgs boson decays to four leptons with CMS open data](http://opendata.cern.ch/docs/observing-higgs-over-one-petabyte-new-cms-open-data). This channel significantly contributed to the Higgs boson discovery in 2012. In this project, it will be translated to a new approach, making use of tools like [coffea](https://github.com/CoffeaTeam/coffea) and [awkward-array](/projects/awkward.html).
