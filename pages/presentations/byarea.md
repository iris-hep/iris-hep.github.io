---
permalink: /presentations/byarea.html
layout: presentations
title: Presentations by Area
---

{% assign sorted_presentations = site.data['sorted_presentations'] %}

<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

{% assign activities = site.pages | where: "layout", "focus-area" | where_exp: "item", "item.draft != true" | sort_natural: 'title' %}

{% for focus-area-page in activities %}
  {% assign focus-area-title = focus-area-page.title %}
  {% assign focus-area-name = focus-area-page.name | basename %}
  <h4>{{ focus-area-title }}</h4>
  <ul>
  {% for talk in sorted_presentations %}
    {% if talk.focus-area contains focus-area-name %}
      <li>
        {%- include print_pres.html talk=talk -%}
      </li>
      {% assign prescount = prescount | plus: "1" %}
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}


<h4>General</h4>
<ul>
{% for talk in sorted_presentations %}
  {% if talk.focus-area == nil %}
    <li>
      {%- include print_pres.html talk=talk -%}
    </li>
    {% assign prescount = prescount | plus: "1" %}
  {% endif %}
{% endfor %}
</ul>

Total presentations (presentations spanning multiple areas listed multiple times): {{ prescount }}.
