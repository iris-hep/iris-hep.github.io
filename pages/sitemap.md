---
permalink: /sitemap.html
layout: default
title: Sitemap
---
<h3>IRIS-HEP Website Sitemap</h3>
<br>

{% comment %}
Go through the list of pages and create an index of them, separating by
different page categories (using our custom frontmatter tag "pagetype").
{% endcomment %}

<br>
<b>Documentation pages:</b>
<ul>
{% for mypage in site.pages %}
  {% if mypage.pagetype == 'doc' %} 
  <li><a href="{{mypage.permalink}}">{{ mypage.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>

<br>
<b>Project pages:</b>
<ul>
{% for mypage in site.pages %}
  {% if mypage.pagetype == 'project' %} 
  <li><a href="{{mypage.permalink}}">{{ mypage.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>


<br>
<b>Other pages:</b>
<ul>
{% for mypage in site.pages %}
  {% if mypage.pagetype != 'doc' %} 
  <li><a href="{{mypage.permalink}}">{{ mypage.title }}</a></li>
  {% endif %}
{% endfor %}
</ul>


