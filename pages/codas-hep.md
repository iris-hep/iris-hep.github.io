---
layout: default
title: CoDaS-HEP
permalink: codas-hep.html
---


{% assign year = "2023" %}

# Computational and Data Science for High Energy Physics (CoDaS-HEP) School - {{year}}


## Instructors

<div class="container-fluid">
    <div class="row">
    {% for instructor in site.codas-hep-instructors %}
    {% assign url_tokens = instructor.url | split: '/' %}
    {% assign year_position = url_tokens.size | minus: 2 %}
    {% assign instructor_year = url_tokens[year_position] %}
    {% if instructor_year == year %}
        <div class="card" style="width: 12rem;">
            <img class="card-img-top" src="{{instructor.photo}}" alt="Card image cap">
            <div class="card-body d-flex flex-column">
                <div class="card-text">
                    <b><a href="{{instructor.url}}">{{instructor.name}}</a></b><br>
                    <small>{{instructor.institution}}</small><br><br>
                </div>
            </div>
        </div>
    {% endif %}
    {% endfor %}
    </div>
    <br>
</div>

## School Students

<div class="container-fluid">
    <div class="row">
    {% for student in site.codas-hep-students %}
    {% assign url_tokens = student.url | split: '/' %}
    {% assign year_position = url_tokens.size | minus: 2 %}
    {% assign student_year = url_tokens[year_position] %}
    {% if student_year == year %}
        <div class="card" style="width: 12rem;">
            <img class="card-img-top" src="{{student.photo}}" alt="Card image cap">
            <div class="card-body d-flex flex-column">
                <div class="card-text">
                    <b><a href="{{student.url}}">{{student.name}}</a></b><br>
                    <small>{{student.institution}}</small><br><br>
                </div>
            </div>
        </div>
    {% endif %}
    {% endfor %}
    </div>
    <br>
</div>
