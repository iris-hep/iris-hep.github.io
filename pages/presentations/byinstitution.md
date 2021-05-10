---
permalink: /presentations/byinstitution.html
layout: presentations
title: Presentations by Institution
---

{% assign sorted_presentations = site.data['sorted_presentations'] %}

<!--
  0     1       2      3       4          5           6          7            8
date | name | title | url | meeting | meetingurl | project | focus_area | institution
-->

{% include institution_list.html %}

<h2>Presentations by the IRIS-HEP team</h2>
{% assign prescount = 0 %}

{% for uniindex in institution_list %}
  {% assign uni = site.data.universities[uniindex] %}
<h4>{{uni.name}}</h4>
<ul>
  {% for talk in sorted_presentations %}
    {% if site.data.people[talk.member].institution contains uni.name %}
      <li>
        {%- include print_pres.html talk=talk -%}
      </li>

      {% assign prescount = prescount | plus: "1" %}
    {% endif %}
  {% endfor %}
</ul>

{% endfor %}

Total presentations: {{ prescount }}.
