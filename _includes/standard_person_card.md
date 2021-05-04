{%- unless include.person -%}
    {% raise_error "Empty person card! Please check." %}
{%- endunless %}

       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{ include.person.photo }}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
         <div class="card-text">
         {% if include.person.website and include.person.website != blank %}
            <b><a href="{{ include.person.website }}">{{ include.person.name }}</a></b><br>
         {% else %}
            <b>{{ include.person.name }}</b><br>
         {% endif %}
         <small>{{ include.person.institution }}</small><br><br>
         </div>
         <div class="card-text mt-auto"><i>{{ include.person.title }}</i><br></div>
         </div>
       </div>

