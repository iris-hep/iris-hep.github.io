---
permalink: /about/advisory-panel.html
layout: default
title: Advisory Panel
---

# Advisory Panel

**The IRIS-HEP Advisory Panel provides external advice to the Institute
management on the Institute’s overall goals and evolving plans.**

<div class="container-fluid">
  <div class="row">
  {% for member in site.data.orgs.advisory-panel.personnel  %}
     {% assign person = site.data.people[member] %}
     {% include standard_person_card.md person=person %}
  {% endfor %}
  </div>
</div>
<br/>

### Previous meetings

{% include list_indico_table.html name="ap" %}

<br/>
