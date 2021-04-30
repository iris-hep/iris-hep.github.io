---
layout: default
pagetype: doc
permalink: /docs/modified.html
title: Last Modified Material
---

# Last Modified Material

## Projects


{% assign sorted2 = site.pages | sort: 'last_modified_at_str' | reverse -%}
{% assign onemonthago = 'now' | date: "%s" | minus: 2592000 | date: "%b %d, %Y %I:%M %p -0500" | replace: "+","%20" | date: "%s" %}
{% assign threemonthago = 'now' | date: "%s" | minus: 7776000 | date: "%b %d, %Y %I:%M %p -0500" | replace: "+","%20" | date: "%s" %}

### Updated in the last month:


{% for mypage in sorted2 -%}
{% assign datecmp = mypage.last_modified_at_str | date: "%s" %}
{%- if mypage.pagetype == 'project' and datecmp > onemonthago -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_at_str | date: "%b %d, %Y" }}
{% endif -%}
{% endfor %}

### Updated in the last 1--3 months:

{% for mypage in sorted2 -%}
{% assign datecmp = mypage.last_modified_at_str | date: "%s" %}
{%- if mypage.pagetype == 'project' and datecmp <= onemonthago and datecmp > threemonthago -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_at_str | date: "%b %d, %Y" }}
{% endif -%}
{% endfor %}

### Updated in the last 3+ months:

{% for mypage in sorted2 -%}
{% assign datecmp = mypage.last_modified_at_str | date: "%s" %}
{%- if mypage.pagetype == 'project' and datecmp <= threemonthago -%}
* [{{mypage.title}}](/projects/{{mypage.shortname}}.html) @ {{ mypage.last_modified_at_str | date: "%b %d, %Y" }}
{% endif -%}
{% endfor %}
