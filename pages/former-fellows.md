---
permalink: /former-fellows.html
layout: default
title: IRIS/HEP Former Fellows
---

# IRIS-HEP Former Fellows

{% assign inactive-fellows = site.fellows | where_exp: "item", "item.active != true"
                                          | last_name_sort: "fellow-name"
                                          | reverse
                                          | iris_hep_fellow_sort
                                          | reverse %}

<div class="container-fluid">
  <div class="row">
  {% for person in inactive-fellows %}
    <div class="card" style="width: 12rem;">
       <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
       <div class="card-body d-flex flex-column">
         <div class="card-text">
            <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
            <small>{{person.institution}}</small><br><br>
         </div>
         <div class="card-text mt-auto"><i>
         {% include fellow_dates.html dates=person.dates %}
         </i><br></div>
       </div>
    </div>
    {% endfor %}
  </div>
  <br>
</div>
