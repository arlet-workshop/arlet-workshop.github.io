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
organizer_horizontal: false
---

---
<h2 style="text-align:center;">Bringing theorists and experimentalists together to drive future research.</h2>
---

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <h3 style="text-align:center;">Talks on theoretical and experimental RL</h3>
        {% include figure.liquid loading="eager" path="assets/img/talks_watercolor.jpg" title="Talks image" class="img-fluid rounded z-depth-1" %}
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

RL has evolved into a dynamic and expansive field, attracting both theorists and experimentalists. While they share a common interest in advancing the field, their research objectives, methodologies, and challenges sometimes diverge significantly. This workshop aims to bridge this gap by bringing them closer together, to shed light on recent developments and synergies in both communities. Specifically, we aim to promote the following long-term desiderata.

- <b>Communicate existing results</b>. It is crucial to consolidate and disseminate the knowledge already accumulated. As the field evolves rapidly, theorists and experimentalists often find themselves immersed in their domain, occasionally overlooking valuable insights and challenges encountered by the other. Participants will have the opportunity to present key findings, best practices, and lessons learned, emphasizing the importance of <i>cross-disciplinary awareness</i>. This proactive sharing of knowledge will help create a collaborative atmosphere that promotes a deeper appreciation for the existing works and encourages fruitful discussions on the current state and future directions in RL.

- <b>Identify new problem classes of practical interest</b>. As experimentalists engage with theorists, we aim to move beyond a set of well-identified issues (e.g., large action spaces, unobservable states, no reset) and, instead, shed light on <i>new structures and perspectives</i> that have not been widely investigated yet. Experimentalists can present algorithms that work surprisingly well but lack theoretical understanding. Equally important are the cases where algorithms fail despite expectations. This collaboration will ensure that theoretical progress addresses the most compelling issues faced in practice and that advancements in empirical research will get the attention of theorists, creating a mutually beneficial exchange of ideas.

<!-- Speakers -->
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
  <section class="item-center">
    {% for speaker in sorted_speakers %}
      <div>{% include speakers.liquid %}</div>
    {% endfor %}
  </section>
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