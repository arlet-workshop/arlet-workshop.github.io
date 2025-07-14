---
layout: about
title: About ARLET NeurIPS 2025
permalink: /
nav: true
nav_order: 1
edition: neurips2025

organizer_horizontal: true
---

This is the about page for NeurIPS 2025. Update with relevant information for the new edition.

<!-- Organizers -->
<h1><b>Organizers</b></h1>
<p> </p>
<div class="organizers">
{% assign neurips_organizers = site.organizers | where_exp: "item", "item.editions contains 'neurips2025'" %}
{% assign sorted_organizers = neurips_organizers | sort: "importance.neurips2025" %}

<!-- Generate cards for each organizer -->
{% if page.organizer_horizontal %}
  <div class="container">
    <div class="row row-cols-2">
    {% for organizer in sorted_organizers %}
      {% include organizers_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
{% else %}
  <div class="grid">
    {% for organizer in sorted_organizers %}
      {% include organizers.liquid %}
    {% endfor %}
  </div>
{% endif %}
</div>