---
layout: page
title: Organizers
permalink: /organizers/
description: A growing collection of your cool organizers.
nav: false
nav_order: 11
horizontal: true
---

<!-- pages/organizers.md -->
<div class="organizers">
{% if site.enable_organizer_categories and page.display_categories %}
  <!-- Display categorized organizers -->
  {% for category in page.display_categories %}
  <a id="{{ category }}" href=".#{{ category }}">
    <h2 class="category">{{ category }}</h2>
  </a>
  {% assign categorized_organizers = site.organizers | where: "category", category %}
  {% assign sorted_organizers = categorized_organizers | sort: "importance" %}
  <!-- Generate cards for each organizer -->
  {% if page.horizontal %}
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
  {% endfor %}

{% else %}

<!-- Display organizers without categories -->

{% assign sorted_organizers = site.organizers | sort: "importance" %}

  <!-- Generate cards for each organizer -->

{% if page.horizontal %}

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
{% endif %}
</div>
