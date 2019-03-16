---
permalink: /test.html
layout: main
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.png
title: Institute for Research and Innovation in Software Test Page
---

{% assign orderedlist = "exec-board", "cornell", "indiana", "mit", "nyu", "princeton", "stanford", "chicago", "cincinnati", "uiuc", "michigan", "nebraska", "berkeley", "ucsc", "ucsd", "uprm", "washington", "wisconsin"] %}

<hr>
<h2>Drill Down Gallery 2</h2>

{% for uni_hash in site.data.universities %}
{% assign uni = uni_hash[1] %}
  <h4>{{uni.name}}</h4>
  <ul>
  {% for member in uni.personnel  %}
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

