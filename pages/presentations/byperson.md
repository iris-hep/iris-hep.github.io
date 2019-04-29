---
permalink: /presentations/byperson.html
layout: default
title: Presentations by Person
---

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}

<h2>Presentations by the IRIS-HEP team</h2>

{% for uniindex in orderedlist %}
{% assign uni = site.data.universities[uniindex] %}
  {% for member in uni.personnel %}
     {% if site.data.people[member].presentations.size > 0 %}
       {% assign presentationlist = site.data.people[member].presentations | sort: "date" | reverse %}
     {% else %}
       {% assign presentationlist = site.data.people[member].presentations %}
     {% endif %}
<h4>{{site.data.people[member].name}} - {{site.data.people[member].institution}}</h4>
<ul>
     {% for talk in presentationlist %}
     {% assign prettydate = talk.date | date: "%-d %b %Y" %}
         <li> {{prettydate}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{site.data.people[member].name}}, <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
     {% endfor %}
</ul>
  {% endfor %}
{% endfor %}


