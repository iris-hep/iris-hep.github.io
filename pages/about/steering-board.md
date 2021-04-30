---
permalink: /about/steering-board.html
layout: default
title: Steering Board
---

# Steering Board

**The IRIS-HEP Steering Board represents the Institute’s stakeholders to
provide, to the Executive Board, the stakeholder’s input on the
priorities, execution, and strategy of the Institute.**

<div class="container-fluid">
  <div class="row">
  {% for member in site.data.orgs.steering-board.personnel  %}
       {% assign person = site.data.people[member] %}
       {% include standard_person_card.md person=person %}
  {% endfor %}
  </div>
</div>
<br/>

### Meetings

Meetings of the Steering Board take place approximately quarterly. Agendas,
presentation material and the minutes for each meeting can be found in the
[IRIS-HEP Steering Board Area in Indico](https://indico.cern.ch/category/10989/).
Direct links to previous meetings are listed below:

{% include list_indico_table.html name="sb" %}

<br/>
