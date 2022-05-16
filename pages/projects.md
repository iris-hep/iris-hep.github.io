---
permalink: /projects.html
layout: default
title: IRIS/HEP Projects
mermaid: true
---

# IRIS-HEP Projects

<style>
table {
    width: 100%;
}
</style>


| Name | Focus Area(s) | Maturity | Description |
|------|-------|-------|:------------|
{% assign sorted = site.pages | sort_natural: 'title' -%}
{% assign projects = sorted | where: "pagetype", "project" -%}
{% for mypage in projects %}
{%- capture focus-areas -%}
{%- assign notfirst = false -%}
{%- for fa in mypage.focus-area -%}
{%- if notfirst -%}
{{", "}}
{%- endif -%}
{%- assign notfirst = true -%}
[{{fa | upcase }}](/{{fa}}.html)
{%- endfor -%}
{%- endcapture -%}
| [{{mypage.title}}](/projects/{{mypage.shortname}}.html) | {{focus-areas}} | {% include maturity.html project=mypage %} | {{ mypage.blurb }} |
{% endfor %}

<br/>

{{ projects | gantt_projects }}

<script>
  mermaid.initialize({ startOnLoad: true });
</script>