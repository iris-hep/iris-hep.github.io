---
permalink: /about/team.html
layout: default
title: Institute Team
---

{% include institution_list.html %}

<h1>Full Team</h1><br>

<div class="container-fluid">
<div class="row">
{% for uniindex in institution_list %}
{% assign univ = site.data.universities[uniindex] %}
  {% for member in univ.personnel  %}
       {% assign person = site.data.people[member] %}
       {% include standard_person_card.md %}
  {% endfor %}
  <br>
{% endfor %}
</div>
</div>

