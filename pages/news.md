---
permalink: /news.html
layout: default
title: "News, Featured Stories and Links"
---

<h1>News, Featured Stories and Links</h1>
<br>
{% for post in site.posts %}
<h4><a href="{{ post.url }}">{{ post.title }}</a></h4>
<h6><i>{{ post.date | date_to_long_string }}</i></h6>
{% if post.postimage %}
<p><img src="{{post.postimage}}" style="float:left; margin-left: 10px; margin-right: 10px; width: 10%"></p>
{% else %}
<img src="/assets/images/Tprime-200pu-PhaseII-black-arctic-main-image-small.jpg" style="float:left; margin-left: 10px; margin-right: 10px; width: 10%">
{% endif %}
{{post.excerpt}}
<br>
<hr>
{% endfor %}



*IRIS-HEP is pleased to see our news stories reposted on the websites of other organizations. The stories should be reposted with credits to the IRIS-HEP website and the original authors, as well as a link to the original posting. Any alterations to the text or images for the reposting should be agreed by the IRIS-HEP Communications team.  Please email <mailto:owner@iris-hep.org>.*


