### Team

{% for member in include.team %}
{% for person_hash in site.data.people %}
{% assign person = person_hash[1] %}
{% if person.shortname == member %}
{% if person.website %}
  * [{{ person.name | strip}}]({{person.website}})
{%else%}
  * {{ person.name | strip}}
{%endif%}
{%endif%}
{%endfor%}
{%endfor%}
