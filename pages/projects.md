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

| Name | Focus Area | Description |
|------|-------|:------------|
{% assign sorted = site.pages | sort: 'title' -%}
{%- for mypage in sorted -%}
{%- if mypage.pagetype == 'project' -%} 
| [{{mypage.title}}](/projects/{{mypage.shortname}}.html) | {{mypage.focus-area}} | {{mypage.blurb}} |
{% endif -%}
{% endfor -%}
