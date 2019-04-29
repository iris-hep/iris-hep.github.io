---
permalink: /news.html
layout: default
title: "Latest News from IRIS-HEP"
---

<h1>IRIS-HEP News</h1>
<br>
{% for post in site.posts %}
<h4><a href="{{ post.url }}">{{ post.title }}</a> ({{ post.date | date_to_long_string }})</h4>
![News Image]({{post.postimage}}){:style="float:left; margin-left: 10px; margin-right: 10px; width: 10%"} 
{{ post.excerpt }}
<br>
<hr>
{% endfor %}



*IRIS-HEP is pleased to see our news stories reposted on the websites of other organizations. The stories should be reposted with credits to the IRIS-HEP website and the original authors, as well as a link to the original posting. Any alterations to the text or images for the reposting should be agreed by the IRIS-HEP Communications team.  Please email <mailto:xyz@iris-hep.org>.*


