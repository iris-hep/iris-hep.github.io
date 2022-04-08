---
permalink: /projects.html
layout: default
title: IRIS/HEP Projects
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
{%- for mypage in sorted -%}
{%- if mypage.pagetype == 'project' -%}
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
| [{{mypage.title}}](/projects/{{mypage.shortname}}.html) | {{focus-areas}} | {{mypage.maturity}} | {{mypage.blurb}} |
{% endif -%}
{% endfor -%}
