---
layout: default
pagetype: doc
permalink: /docs/modified.html
title: Last Modified Material
---

# Last Modified Material

## Projects


{% assign sorted-modified = site.pages | where: "pagetype", "project" | sort: 'last_modified_date' | reverse -%}

### Updated in the last month:

{% assign current = sorted-modified | month_range: "last_modified_date", 1 %}

{% for mypage in current -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_date | date: "%b %d, %Y" }}
{% endfor %}

### Updated in the last 1--3 months:

{% assign current = sorted-modified | month_range: "last_modified_date", 3, 1 %}

{% for mypage in current -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_date | date: "%b %d, %Y" }}
{% endfor %}

### Updated in the last 3+ months:

{% assign current = sorted-modified | month_range: "last_modified_date", nil, 3 %}

{% for mypage in current -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_date | date: "%b %d, %Y" }}
{% endfor %}
