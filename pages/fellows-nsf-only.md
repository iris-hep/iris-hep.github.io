---
permalink: /fellows-nsf-only.html
layout: default
title: IRIS/HEP Fellows Funded by NSF
---

# NSF-funded IRIS-HEP Fellows

{% assign fellows = site.fellows | last_name_sort: "fellow-name"
                                 | reverse
                                 | iris_hep_fellow_sort
                                 | reverse %}
{% assign nsf-fellows = fellows  | where_exp: "item", "item.funding-source == 'nsf'" | where_exp: "item", "item.hidden != true" %}

<div class="container-fluid">
  <div class="row">
    {% for person in nsf-fellows %}
      <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
           <div class="card-text">
              <b><a href="{{person.url}}">{{person.fellow-name}}</a></b><br>
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
