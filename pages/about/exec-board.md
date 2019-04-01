---
permalink: /about/executive-board.html
layout: default
title: Executive Board
---

<div class="container-fluid">
  <h1>Executive Board</h1><br>
  <p><b>The IRIS-HEP Executive Board manages the day to day activities of the Institute.</b></p>
  <div class="row">
  {% for member in site.data.orgs.exec-board.personnel  %}
     {% assign person = site.data.people[member] %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
         <div class="card-text">
         <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         <small>{{person.institution}}</small><br><br>
		 <small>
			<a href="mailto:{{person.e-mail}}">
				<em>{{person.e-mail}}</em>
			</a>
		 </small><br><br>
         </div>
         <div class="card-text mt-auto"><i>{{person.title}}</i><br></div>
         </div>
       </div>
  {% endfor %}
  </div>
  <br>
</div>
