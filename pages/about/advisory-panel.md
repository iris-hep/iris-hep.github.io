---
permalink: /about/advisory-panel.html
layout: default
title: Advisory Panel
---

<div class="container-fluid">
  <h1>Advisory Panel</h1><br>
  <p><b> The IRIS-HEP Advisory Panel provides external advice to the Institute 
	  management on the Institute’s overall goals and evolving plans.</b></p>
  <div class="row">
  {% for member in site.data.orgs.advisory-panel.personnel  %}
     {% assign person = site.data.people[member] %}
     {% include standard_person_card.md %}
  {% endfor %}
  </div>  
  <br>
</div>
