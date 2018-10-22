---
permalink: /about/team.html
layout: default
title: Institute Team
---

{% assign orderedlist = "exec-board", "cornell", "indiana", "mit", "nyu", "princeton", "stanford", "chicago", "cincinnati", "uiuc", "michigan", "nebraska", "berkeley", "ucsc", "ucsd", "uprm", "washington", "wisconsin"] %}
 

<div class="container-fluid">
  <h1>Executive Board</h1><br>
  <div class="row">
  {% for member in site.data.orgs.exec-board.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body">
         <p class="card-text">
         <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         <small>{{person.institution}}</small><br><br>
         <i>{{person.title}}</i><br>
         </p>
         </div>
       </div>
       {% endif %}
       {% endfor %}
  {% endfor %}
  </div>
  <br>
</div>

<h1>Full Team</h1><br>

<div class="container-fluid">
<div class="row">
{% for univ_hash in site.data.universities %}
{% assign univ = univ_hash[1] %}
  {% for member in univ.personnel  %}
     {% for person_hash in site.data.people %}
       {% assign person = person_hash[1] %}
       {% if person.shortname == member %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body">
         <p class="card-text">
         <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         <small>{{person.institution}}</small><br><br>
         <i>{{person.title}}</i><br>
         </p>
         </div>
       </div>
       {% endif %}
       {% endfor %}
  {% endfor %}
  <br>
{% endfor %}
</div>
</div>

