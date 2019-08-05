---
permalink: /presentations/byinstitution.html
layout: presentations
title: Presentations by Institution
---

{% include get_pres_list.html %}

<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}

<h2>Presentations by the IRIS-HEP team</h2>

{% for uniindex in orderedlist %}
  {% assign uni = site.data.universities[uniindex] %}
<h4>{{uni.name}}</h4>
<ul>
  {% for row in sorted_pres %}
    {% assign pres = row | split: "|" %}
    {% if pres[8] contains uni.name %}
<li> {{pres[0]}} - <a href="{{pres[3]}}">"{{pres[2]}}"</a>, {{pres[1]}}, <a href="{{pres[5]}}">{{pres[4]}}</a></li>
    {% endif %}
  {% endfor %}
</ul>

{% endfor %}
