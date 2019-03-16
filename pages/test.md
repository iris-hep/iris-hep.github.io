---
permalink: /test.html
layout: default
title: Institute for Research and Innovation in Software Test Page
---

{% assign orderedlist = "exec-board", "cornell", "indiana", "mit", "nyu", "princeton", "stanford", "chicago", "cincinnati", "uiuc", "michigan", "nebraska", "berkeley", "ucsc", "ucsd", "uprm", "washington", "wisconsin"] %}

<hr>
<h2>Presentations by the IRIS-HEP team</h2>

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



