---
permalink: /test.html
layout: main
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.png
title: Institute for Research and Innovation in Software Test Page
---

{% assign orderedlist = "exec-board", "cornell", "indiana", "mit", "nyu", "princeton", "stanford", "chicago", "cincinnati", "uiuc", "michigan", "nebraska", "berkeley", "ucsc", "ucsd", "uprm", "washington", "wisconsin"] %}

<h3>Upcoming Events</h3>
 
<div class="container-fluid">
<div class="row">
{% for event_hash in site.data.events%}
{% assign event = event_hash[1] %}
       <div class="card" style="width: 22rem;">
         <img class="card-img-top" src="{{event.image}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
         <div class="card-text">
         <b>{{event.title}}</b><br>
         <i>{{event.location}}</i><br>
         <i>{{event.startdate}} - {{event.enddate}}</i><br><br>
         <i>{{event.description}}</i><br><br>
         </div>
         <div class="card-text mt-auto"><b><a href="{{event.meetingurl}}">{{event.meetingurl}}</a></b></div>
         </div>
       </div>
{% endfor %}
</div>
</div>

<hr>

<div class="container-fluid">
<div class="row">
{% for univ_hash in site.data.universities %}
{% assign univ = univ_hash[1] %}
  {% for member in univ.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
         <div class="card-text">
         <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         <small>{{person.institution}}</small><br><br>
         </div>
         <div class="card-text mt-auto"><i>{{person.title}}</i><br></div>
         </div>
       </div>
       {% endif %}
       {% endfor %}
  {% endfor %}
  <br>
{% endfor %}
</div>
</div>

<hr>

<h1>{{page.title}}</h1>
<br>

<h2>Team Gallery</h2>

<div class="container-fluid">
{% for org_hash in site.data.orgs %}
{% assign org = org_hash[1] %}
  <h2>{{org.name}}</h2><br>
  <div class="row">
  {% for member in org.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body">
         <p class="card-text">
         <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         <small>{{person.institution}}</small><br><br>
         <i>{{person.title}}</i><br>
         </p>
         </div>
       </div>
       {% endif %}
       {% endfor %}
  {% endfor %}
  </div>
  <br>
{% endfor %}
</div>

<h2>Team Gallery</h2>

<div class="container-fluid">
<div class="row">
{% for org_hash in site.data.orgs %}
{% assign org = org_hash[1] %}
  {% for member in org.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body">
         <p class="card-text">
         <b>{{person.name}}</b><br>
         {{person.institution}}<br>
         <i>{{person.title}}</i><br>
         <a href="{{person.website}}">Website</a><br>
         </p>
         </div>
       </div>
       {% endif %}
       {% endfor %}
  {% endfor %}
{% endfor %}
</div>
</div>

<hr>
<h2>Drill Down Gallery 2</h2>

{% for org_hash in site.data.orgs %}
{% assign org = org_hash[1] %}
  <h4>{{org.name}}</h4>
  <ul>
  {% for member in org.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
         {% for talk in person.presentations %}
         <li> {{talk.date}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{person.name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
         {% endfor %}
       {% endif %}
       {% endfor %}
  {% endfor %}
  </ul>
{% endfor %}

<hr>

<h2>Accumulate Gallery</h2>

{% for org_hash in site.data.orgs %}
{% assign org = org_hash[1] %}
  <h4>{{org.name}}</h4>
  <ul>
  {% for member in org.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
         <li> Person: {{person.name}} </li>
         {% for talk_hash in site.data.presentations.person %}
           {% assign talk = talk_hash[1] %}
           <li> Talk: {{talk.date}} - {{talk.title}} </li>
         {% endfor %}
       {% endfor %}
  {% endfor %}
  </ul>
{% endfor %}

<h2>Sorted Drill Down Gallery</h2>

{% for org_hash in site.data.orgs %}
{% assign org = org_hash[1] %}
  <h4>{{org.name}}</h4>
  <ul>
  {% for member in org.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
         {% for talk in person.presentations %}
         <li> {{talk.date}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{person.name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
         {% endfor %}
       {% endif %}
       {% endfor %}
  {% endfor %}
  </ul>
{% endfor %}

