---
permalink: /presentations/byarea.html
layout: presentations
title: Presentations by Area
---

{% include get_pres_list.html %}

<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

<h2>Presentations by the IRIS-HEP team</h2>

{% assign activities = site.pages | where: "layout", "focus-area" | where_exp: "item", "item.draft != true" | sort: 'title' %}

{% for focus-area-page in activities %}
  {% assign focus-area-title = focus-area-page.title %}
  {% assign focus-area-name = focus-area-page.short_title | strip %}
  <h4>{{ focus-area-title }}</h4>
  <ul>
  {% for row in sorted_pres %}
    {% assign pres = row | split: "|" %}
    {% if pres[7] contains focus-area-name %}
      <li> {{pres[0]}} - <a href="{{pres[3]}}">"{{pres[2]}}"</a>, {{pres[1]}}, <a href="{{pres[5]}}">{{pres[4]}}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}


