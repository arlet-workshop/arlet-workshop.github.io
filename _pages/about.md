---
layout: about
title: About
permalink: /
subtitle: Workshop at the International Conference on Machine Learning, <a href="https://icml.cc/virtual/2024/workshop/29964">Friday, the 26 of July 2024</a>. Vienna, Austria.

# profile:
#   align: right
#   image: prof_pic.jpg
#   image_circular: false # crops the image to make it circular
#   more_info: >
#     <p>555 your office number</p>
#     <p>123 your address street</p>
#     <p>Your City, State 12345</p>

news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: false # includes social icons at the bottom of the page

display_categories: [lecturer, panelist]
speaker_horizontal: false
organizer_horizontal: true
---

<div style="text-align: justify">
Recent progress in reinforcement learning (RL) has powered breakthroughs in various real-world problems (<i>e.g.</i>, <a href="https://www.nature.com/articles/nature16961">1</a>, <a href="https://ieeexplore.ieee.org/document/8103164">2</a>, <a href="https://dl.acm.org/doi/abs/10.1145/3543846">3</a>, <a href="https://www.nature.com/articles/s41586-022-05172-4">4</a>, <a href="https://www.nature.com/articles/s41586-023-06004-9">5</a>, <a href="https://arxiv.org/abs/2102.11492">6</a>), gathering considerable attention and investment. However, it has also exposed a significant gap between theoretical and experimental developments. <br>
<p></p>
RL theory has grown significantly in the past two decades. Research has characterized the inherent difficulty of various settings, and has designed a wide variety of algorithms (<i>e.g.</i>, <a href="https://arxiv.org/abs/1807.03765">7</a>, <a href="https://arxiv.org/abs/2005.06392">8</a>, <a href="https://ieeexplore.ieee.org/document/9435807">9</a>) to reach optimal performances. Furthermore, a huge leap has been made in understanding how to handle large state spaces using function approximation techniques, identifying key structural properties that enable efficient learning (<i>e.g.</i>, <a href="https://arxiv.org/abs/1907.05388">10</a>, <a href="https://arxiv.org/abs/1910.03016">11</a>, <a href="https://arxiv.org/abs/2310.07811">12</a>). <br>
<p></p>
However, despite theoretical guarantees, applying RL algorithms to complex problems faces challenges. Theoretical algorithms often focus on simplified settings, making them hard to apply to real-world complexities. Furthermore, optimizing for worst-case scenarios, which include unlikely situations, can lead to algorithms that perform poorly on practical tasks. Yet, while specialized algorithms offer empirical success, they might not translate to other problems due to their specific design, and the reliance on heuristics and engineering fixes (<a href="https://iclr-blog-track.github.io/2022/03/25/ppo-implementation-details/">13</a>) further widens the gap between theory and practice. <br>
<p></p>
With this workshop, we aim to bring theorists and experimentalists together to drive future research in RL.
</div>

---
<h2 style="text-align:center;">Highlights</h2>
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <h3 style="text-align:center;">A panel to discuss the current state of RL</h3>
        {% include figure.liquid loading="eager" path="assets/img/panel_watercolor.jpg" title="Talks image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <h3 style="text-align:center;">Idea track: send your problems</h3>
        {% include figure.liquid loading="eager" path="assets/img/ideas_watercolor.jpg" title="Ideas image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <h3 style="text-align:center;">Research track: send your solutions</h3>
        {% include figure.liquid loading="eager" path="assets/img/posters_watercolor.jpg" title="Posters image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

We are excited to have an <em>[idea track](cfi)</em> along with the canonical [call for papers](cfp), which we hope will foster increased collaboration within the community. The talks will also be followed by a panel dicussion on the current state of RL. See the [schedule](/schedule) for details.

<!-- Speakers -->
<br>
<h1><b>Speakers</b></h1>

We are thrilled to have the following researchers joining us for the event.

<div class="speakers">
{% if site.enable_speaker_categories and page.display_categories %}
  <!-- Display categorized speakers -->
  {% for category in page.display_categories %}
  <a id="{{ category }}" href=".#{{ category }}">
    <h2 class="category">{{ category }}</h2>
  </a>
  {% assign categorized_speakers = site.speakers | where: "category", category %}
  {% assign sorted_speakers = categorized_speakers | sort: "importance" %}
  <!-- Generate cards for each speaker -->
  {% if page.speaker_horizontal %}
  <div class="container">
    <div class="row row-cols-2">
    {% for speaker in sorted_speakers %}
      {% include speakers_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="d-flex justify-content-between">
    {% for speaker in sorted_speakers %}
      <div class="p-2">{% include speakers.liquid %}</div>
    {% endfor %}
  </div>
  {% endif %}
  {% endfor %}

{% else %}

<!-- Display speakers without categories -->

{% assign sorted_speakers = site.speakers | sort: "importance" %}

  <!-- Generate cards for each speaker -->

{% if page.speaker_horizontal %}

  <div class="container">
    <div class="row row-cols-2">
    {% for speaker in sorted_speakers %}
      {% include speakers_horizontal.liquid %}
    {% endfor %}
    </div>
  </div>
  {% else %}
  <div class="grid">
    {% for speaker in sorted_speakers %}
      {% include speakers.liquid %}
    {% endfor %}
  </div>
  {% endif %}
{% endif %}
</div>

<br>
<!-- Organizers -->
<h1><b>Organizers</b></h1>
<p> </p>
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
  {% endfor %}

{% else %}

<!-- Display organizers without categories -->

{% assign sorted_organizers = site.organizers | sort: "importance" %}

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
{% endif %}
</div>

<br>
<h1><b>Sponsors</b></h1>

Thanks to our sponsors for supporting the workshop.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/GR_logo_horizontal.png" width="220" title="GR logo" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<br>
<h1><b>Contact</b></h1>

You can reach us by email at [``arlet.icml2024@gmail.com``](mailto:arlet.icml2024@gmail.com), or on Twitter, [``@arlet_workshop``](https://twitter.com/arlet_workshop).
