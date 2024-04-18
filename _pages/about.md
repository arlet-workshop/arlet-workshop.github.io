---
layout: about
title: About
permalink: /
subtitle: Workshop at the International Conference on Machine Learning, 2024. Vienna, Austria.

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
Reinforcement Learning (RL) has evolved into a dynamic and expansive field, attracting both theorists and experimentalists. While they share a common interest in advancing the field, their research objectives, methodologies, and challenges sometimes diverge significantly. This workshop aims to bridge this gap and to shed light on recent developments and synergies in both communities. Specifically, we aim to promote the following long-term desiderata.

<ul>
  <li>
    <b>Communicate existing results</b>. As the field evolves rapidly, theorists and experimentalists often find themselves immersed in their domain, occasionally overlooking valuable insights and challenges encountered by the other. Participants will have the opportunity to present key findings, best practices, and lessons learned, emphasizing the importance of <i>cross-disciplinary awareness</i>. This proactive sharing of knowledge will help create a collaborative atmosphere that promotes a deeper appreciation for the existing works and encourages fruitful discussions on the current state and future directions in RL.
  </li>

  <li>
    <b>Identify new problem classes of practical interest</b>. We aim to focus on <i>new structures and perspectives</i> that have not been widely investigated yet. Experimentalists can present algorithms that work surprisingly well but lack theoretical understanding. Equally important are the cases where algorithms fail despite expectations. This collaboration will ensure that theoretical progress addresses the most compelling issues faced in practice and that advancements in empirical research will get the attention of theorists, creating a mutually beneficial exchange of ideas.
  </li>
</ul>
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
<h1><b>Contact</b></h1>

You can reach us by email at [``arlet.icml2024@gmail.com``](mailto:arlet.icml2024@gmail.com), or on Twitter, [``@arlet_workshop``](https://twitter.com/arlet_workshop).