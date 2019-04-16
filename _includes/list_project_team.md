### Team
<ul>
{%- for member in include.team -%}
{%- for person_hash in site.data.people -%}
{%- assign person = person_hash[1] -%}
{%- if person.shortname == member -%}
{%- if person.website -%}
<li> <a href="{{person.website}}">{{ person.name }}</a> </li>
{%- else -%}
<li> {{ person.name }} </li>
{%- endif -%}
{%- endif -%}
{%- endfor -%}
{%- endfor -%}
</ul>