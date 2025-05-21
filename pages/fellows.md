---
permalink: /fellows.html
layout: default
title: IRIS/HEP Fellows Program
minisearch: true
---

# IRIS-HEP Fellows Program

<!---
**Applications for the Undergraduate Fellows program in Summer 2025 are now open. Applications submitted before Monday, 10 March, 2025 (end of the day, any time zone) will prioritized for consideration, but applications will be accepted through 24 March, 2025.**

**Please see the [Application webpage](/fellows-applications.html) for information how to apply.**
-->

Fellow applications are not currently being accepted. Please check back in early 2026 for information on how to apply to for summer, 2026.

<!---
Fellow selections for 2024 have been completed. Please check back in early 2025 for information on how to apply to be an IRIS-HEP Fellow in summer, 2025.
-->

People are the key to successful software. IRIS-HEP aims to promote the development of advanced research software skills by providing opportunities for undergraduate and graduate students to connect with mentors within the larger High Energy Physics (HEP) and Computational/Data Science community. At the same time, we aim to promote software as a collaborative activity and encourage collaborations which engage individuals in ways that maximize their potential and their potential impact on the community.
To accomplish these goals, IRIS-HEP has created a Fellows program. IRIS-HEP Fellows will spend some number of months working with a mentor to build their skills while working on a research software project relevant to the Institute.

## Adding a project

We are preparing to announce the opening for the [2025 Fellows program](/fellows.html) for student applications.  In the past,our Fellows have completed a good deal of excellent work and research among a diverse set of projects.  We look to continue these efforts.  Prior to the call for new Fellows we wanted to solicit any new ideas for Fellows projects.  You can see a list of projects available here:

<http://research-software-collaborations.org/projects_irishep>

 If there is a project that you would like to propose and you are willing to mentor a student (directly or as part of a group), please go to <https://github.com/research-software-collaborations/project_database> and make a pull request to create your particular project(s).

 The directions for adding a project can be found in the repository.

## Search for Fellows or Projects:
<!-- <label for="site-search">Search for Fellows or Projects:</label> -->
<input type="search" id="site-search" name="q" />

{% assign fellows = site.fellows | last_name_sort: "fellow-name"
                                 | reverse
                                 | iris_hep_fellow_sort
                                 | reverse %}
{% assign active-fellows = fellows   | where_exp: "item", "item.active == true" | where_exp: "item", "item.hidden != true" %}
{% assign inactive-fellows = fellows | where_exp: "item", "item.active != true" | where_exp: "item", "item.hidden != true" %}

{% if active-fellows.size > 0 %}
# Current IRIS-HEP Fellows

<div class="container-fluid">
  <div class="row">
    {% for person in active-fellows %}
      <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
           <div class="card-text">
              <b><a href="{{person.url}}">{{person.fellow-name}}</a></b><br>
              <small>{{person.institution}}</small><br><br>
           </div>
           <div class="card-text mt-auto"><i>
             {% include fellow_dates.html dates=person.dates %}
           </i><br></div>
         </div>
      </div>
    {% endfor %}
  </div>
  <br>
</div>

{% endif %}

# Former IRIS-HEP Fellows
<div class="container-fluid">
  <div class="row">
    {% for person in inactive-fellows %}
       <div class="card" style="width: 12rem;">
          <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
          <div class="card-body d-flex flex-column">
            <div class="card-text">
               <b><a href="{{person.url}}">{{person.fellow-name}}</a></b><br>
               <small>{{person.institution}}</small><br><br>
            </div>
            <div class="card-text mt-auto"><i>
            {% include fellow_dates.html dates=person.dates %}
            </i><br></div>
          </div>
       </div>
    {% endfor %}
  </div>
  <br>
</div>
