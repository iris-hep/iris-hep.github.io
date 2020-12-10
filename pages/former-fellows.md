---
permalink: /former-fellows.html
layout: default
title: IRIS/HEP Former Fellows
---

# IRIS-HEP Former Fellows

<div class="container-fluid">
  <div class="row">
    {% assign sorted = site.pages | sort_natural: 'title' %}
    {% for mypage in sorted %}
      {%- if mypage.dates.first.start -%}
        {% assign sorted_dates = mypage.dates | reverse %}
        {% assign page_start_date = sorted_dates.first.start | date: '%F' %}
      {%- else -%}
        {% assign page_start_date = mypage.dates.start | date: '%F' %}
      {%- endif -%}
      {% if mypage.pagetype == 'fellow' %}
        {% if mypage.active %}
        {% else %}
           {% assign person = mypage %}

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
        {% endif %}
      {% endif %}
    {% endfor %}
  </div>
  <br>
</div>
