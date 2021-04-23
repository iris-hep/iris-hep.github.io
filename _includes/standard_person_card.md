{%- unless person -%}
    {{ "Empty person card! Please check." | raise_error }}
{%- endunless %}
       <div class="card" style="width: 12rem;">
         <img class="card-img-top" src="{{person.photo}}" alt="Card image cap">
         <div class="card-body d-flex flex-column">
         <div class="card-text">
         {% if person.website and person.website != blank %}
            <b><a href="{{person.website}}">{{person.name}}</a></b><br>
         {% else %}
            <b>{{person.name}}</b><br>
         {% endif %}
         <small>{{person.institution}}</small><br><br>
         </div>
         <div class="card-text mt-auto"><i>{{person.title}}</i><br></div>
         </div>
       </div>

