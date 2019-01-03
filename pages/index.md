---
permalink: /index.html
layout: main
title: Institute for Research and Innovation in Software
bgimage: assets/images/Tprime-200pu-PhaseII-black-arctic-main-image.jpg
---
<h3>Computational and data science research to enable discoveries in fundamental physics</h3>
<br>
IRIS-HEP is a software institute funded by the National Science Foundation. It aims to develop the state-of-the-art software cyberinfrastructure required for the challenges of data intensive scientific research at the High Luminosity Large Hadron Collider (HL-LHC) at CERN, and other planned HEP experiments of the 2020's. These facilities are discovery machines which aim to understand the fundamental building blocks of nature and their interactions. [Full Overview](/about/overview.html)
<br><br>
The IRIS-HEP project was funded on 1 September, 2018, and is ramping up its activities. 

<div class="container-fluid">
  <h4>Upcoming Events:</h4><br>
  <ul>
  {% for event_hash in site.data.events  %}
    {% assign event = event_hash[1] %}
    <li> {{event.dates}} - {{event.name}} </li>
    <ul>
        <li> *{{event.location}}* </li>
        <li> [Website]({{event.website}}) </li>
    </ul>
  {% endfor %}
  </ul>
  <br>
</div>


Please check back to this website for further updates.
