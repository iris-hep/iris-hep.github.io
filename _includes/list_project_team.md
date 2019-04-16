### Team

{% for project_hash in site.data.projects %}
{% assign project = project_hash[1] %}
{% if project.shortname == include.shortname %}
{% assign team = project.Team %}
{% for member in team %}
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
{%endif%}
{%endfor%}