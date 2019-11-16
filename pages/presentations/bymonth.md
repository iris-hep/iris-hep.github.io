---
permalink: /presentations/bymonth.html
layout: presentations
title: Presentations by Month
redirect_from: "/presentations/all"
---

{% include get_pres_list.html %}


<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

<h2>Presentations by the IRIS-HEP team</h2>

<ul>
{% assign prev_header = "" %}
{% for row in sorted_pres %}
  {% assign pres = row | split: "|" %}
  {% assign talk_date = pres[0] | date: "%B, %Y" %}
  {% if prev_header != talk_date %}
</ul>
<h4> {{ talk_date }} </h4>
<ul>
    {% assign prev_header =  talk_date %}
  {% endif %}

  <li> {{pres[0]}} - <a href="{{pres[3]}}">"{{pres[2]}}"</a>, {{pres[1]}}, <a href="{{pres[5]}}">{{pres[4]}}</a></li>
{% endfor %}
</ul>
