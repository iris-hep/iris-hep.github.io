---
permalink: /former-fellows.html
layout: default
title: IRIS/HEP Former Fellows
---

# IRIS-HEP Former Fellows

<div class="container-fluid">
  <div class="row">
    {% assign current_fellows_start = '2020-05-01' | date:'%F' %}
    {% assign sorted = site.pages | sort_natural: 'title' %}
    {% for mypage in sorted %}
      {%- if mypage.dates.first -%}
        {% assign sorted_dates = mypage.dates | reverse %}
        {% assign page_start_date = sorted_dates.first.start_date | date: '%F' %}
      {%- else -%}
        {% assign page_start_date = mypage.start_date | date: '%F' %}
      {%- endif -%}
      {% if mypage.pagetype == 'fellow' and page_start_date < current_fellows_start %}
         {% assign person = mypage %}

         <div class="card" style="width: 12rem;">
            <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
            <div class="card-body d-flex flex-column">
              <div class="card-text">
                 <b><a href="{{person.permalink}}">{{person.fellow-name}}</a></b><br>
                 <small>{{person.institution}}</small><br><br>
              </div>
              <div class="card-text mt-auto"><i>

              {%- if person.dates.first -%}
                {% for dates in person.dates %}
                  {{ dates.start_date | date: "%b" }} - {{ dates.end_date | date: "%b %Y" }}<br>
                {% endfor %}
               {%- else -%}
                {{ person.start_date | date: "%b" }} - {{ person.end_date | date: "%b %Y" }}<br>
               {%- endif -%}
              </i><br></div>
            </div>
         </div>
      {% endif %}
    {% endfor %}
  </div>
  <br>
</div>
