---
permalink: /presentations/bymonth.html
layout: default
title: Presentations by Month
redirect_from: "/presentations/all"
---

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}
{% assign yearlist = "2019, 2018, 2017, 2016" | split: ", " %}
{% assign monthlist= "12, 11, 10, 09, 08, 07, 06, 05, 04, 03, 02, 01" | split: ", " %}

<h2>Presentations by the IRIS-HEP team</h2>

{% for yearidx in yearlist %}
{% for monthidx in monthlist %}
{% assign hdrprint = true %}

{% for uniindex in orderedlist %}
{% assign uni = site.data.universities[uniindex] %}
  {% for member in uni.personnel %}
     {% assign presentationlist = site.data.people[member].presentations %}
<ul>
     {% for talk in presentationlist %}
  {% assign talkyear = talk.date | date: "%Y" %}
  {% assign talkmonth = talk.date | date: "%m" %}
  {% if talkyear == yearidx and talkmonth == monthidx %}
  {% if hdrprint == true %}
    <br><h5>{{talk.date | date: "%B, %Y"}}</h5>
    {% assign hdrprint = false %}
  {% endif %}
  {% assign prettydate = talk.date | date: "%-d %b %Y" %}
   <li> {{prettydate}} - <a href="{{talk.url}}">"{{talk.title}}"</a>, {{site.data.people[member].name}} ({{site.data.people[member].institution}}), <a href="{{talk.meetingurl}}">{{talk.meeting}}</a></li>
  {% endif %}
     {% endfor %}
</ul>
  {% endfor %}
{% endfor %}

{% endfor %}
{% endfor %}

