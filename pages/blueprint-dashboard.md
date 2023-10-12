---
permalink: /blueprint-dashboard.html
layout: default
title: IRIS/HEP Blueprint Dashboard
---
# IRIS-HEP Blueprints

<style>
table {
    width: 100%;
}
</style>



| Topic | Focus Area(s) | Dates | Location | Status | Notes |
|------|-------|-------|:------------|-------|
{% assign blueprints = site.blueprints | sort: 'meetingdate' -%}
{% for mypage in blueprints %}
{%- capture focus-areas -%}
{%- assign notfirst = false -%}
{%- for fa in mypage.focus-areas -%}
{%- if notfirst -%}
{{", "}}
{%- endif -%}
{%- assign notfirst = true -%}
[{{fa | upcase }}](/{{fa}}.html)
{%- endfor -%}
{%- endcapture -%}
{%- capture documents -%}
{%- assign notfirst = false -%}
{%- for doc in mypage.documents -%}
{%- if notfirst -%}
{{", "}}
{%- endif -%}
{%- assign notfirst = true -%}
[{{doc.type}}]({{doc.url}})
{%- endfor -%}
{%- endcapture -%}
{%- capture meetinglink -%}
{%- if myppage.meetingurl != ""  -%}
{{mypage.topic}} - {{mypage.meetingurl}}
{%- else -%}
[{{mypage.topic}}]({{mypage.meetingurl}})
{%- endif -%}
{%- endcapture -%}
| {{meetinglink}} | {{focus-areas}} | {{mypage.meetingdate}} | {{ mypage.location }} | {{mypage.status}} | {{documents}} |
{% endfor %}

<br/>

{% assign indico_list = site.data.indico.topical | values | sort: 'startdate' %}
