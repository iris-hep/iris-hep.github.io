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



| Topic | Dates | Location | Focus Area(s)| Notes | Status |
|------|:-------|-------|:------------|-------:|-----:|
{% assign blueprints = site.blueprints | sort: 'meetingdate' | sort: 'status' -%}
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
{%- assign test_url = mypage.meetingurl -%}
{%- if test_url contains "https"  -%}
[{{mypage.topic}}]({{mypage.meetingurl}})
{%- else -%}
[{{mypage.topic}}]({{mypage.url}})
{%- endif -%}
{%- endcapture -%}
|{{meetinglink}}| {{mypage.meetingdate}} | {{ mypage.location }} | {{focus-areas}} | {{documents}} | {{mypage.status}}  |
{% endfor %}

<br/>

{% assign indico_list = site.data.indico.topical | values | sort: 'startdate' %}
