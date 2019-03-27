---
permalink: /presentations/byinstitution.html
layout: default
title: Presentations by Institution
---

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}

<h2>Presentations by the IRIS-HEP team</h2>
{% for uniindex in orderedlist %}
{% assign uni = site.data.universities[uniindex] %}
  <h4>{{uni.name}}</h4>
  <ul>
  {% for member in uni.personnel  %}
     {% for talk in site.data.people[member].presentations %}
         <li> {{talk.date}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{site.data.people[member].name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
     {% endfor %}
  {% endfor %}
  </ul>
{% endfor %}


