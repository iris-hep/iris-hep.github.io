---
permalink: /about/team.html
layout: default
title: Institute Team
---

{% assign orderedlist = "cornell, indiana, mit, morgridge, nyu, princeton, stanford, chicago, cincinnati, uiuc, michigan, nebraska, berkeley, ucsc, ucsd, uprm, washington, wisconsin" | split: ", " %}

<h1>Full Team</h1><br>

<div class="container-fluid">
<div class="row">
{% for uniindex in orderedlist %}
{% assign univ = site.data.universities[uniindex] %}
  {% for member in univ.personnel  %}
       {% assign person = site.data.people[member] %}
       {% include standard_person_card.md %}
  {% endfor %}
  <br>
{% endfor %}
</div>
</div>

