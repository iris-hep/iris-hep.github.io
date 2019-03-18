---
permalink: /presentations/byperson.html
layout: default
title: Presentations
---

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}

<h2>Presentations by the IRIS-HEP team</h2>


{% for uniindex in orderedlist %}
{% assign uni = site.data.universities[uniindex] %}
  {% for member in uni.personnel %}
     {% assign presentationlist = site.data.people[member].presentations %}
<h4>{{site.data.people[member].name}} - {{site.data.people[member].institution}}</h4>
<ul>
     {% for talk in presentationlist %}
         <li> {{talk.date}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{site.data.people[member].name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
     {% endfor %}
</ul>
  {% endfor %}
{% endfor %}


