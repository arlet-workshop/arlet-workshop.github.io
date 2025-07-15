---
layout: about
title: About ARLET @ NeurIPS 2025
permalink: /
nav: true
nav_order: 1
edition: neurips2025
subtitle: Workshop at the Conference on Neural Information Processing Systems, <a href="https://neurips.cc">date to be defined</a>. San Diego, California.

display_categories: [lecturer, panelist]
speaker_horizontal: false
organizer_horizontal: true
---

<div style="text-align: justify">
Recent progress in reinforcement learning (RL) has powered breakthroughs in various real-world problems (<i>e.g.</i>, <a href="https://www.nature.com/articles/nature16961">1</a>, <a href="https://ieeexplore.ieee.org/document/8103164">2</a>, <a href="https://dl.acm.org/doi/abs/10.1145/3543846">3</a>, <a href="https://www.nature.com/articles/s41586-022-05172-4">4</a>, <a href="https://www.nature.com/articles/s41586-023-06004-9">5</a>, <a href="https://arxiv.org/abs/2102.11492">6</a>), gathering considerable attention and investment. However, it has also exposed a significant gap between theoretical and experimental developments. <br>
<p></p>
RL theory has grown significantly in the past two decades. Research has characterized the inherent difficulty of various settings, and has designed a wide variety of algorithms (<i>e.g.</i>, <a href="https://arxiv.org/abs/1807.03765">7</a>, <a href="https://arxiv.org/abs/2005.06392">8</a>, <a href="https://ieeexplore.ieee.org/document/9435807">9</a>) to reach optimal performances. Furthermore, a huge leap has been made in understanding how to handle large state spaces using function approximation techniques, identifying key structural properties that enable efficient learning (<i>e.g.</i>, <a href="https://arxiv.org/abs/1907.05388">10</a>, <a href="https://arxiv.org/abs/1910.03016">11</a>, <a href="https://arxiv.org/abs/2310.07811">12</a>). <br>
<p></p>
Despite theoretical guarantees, applying RL algorithms to complex problems faces challenges. Theoretical algorithms often focus on simplified settings, making them hard to apply to real-world complexities. Furthermore, optimizing for worst-case scenarios, which include unlikely situations, can lead to algorithms that perform poorly on practical tasks. Yet, while specialized algorithms offer empirical success, they might not translate to other problems due to their specific design, and the reliance on heuristics and engineering fixes (<a href="https://iclr-blog-track.github.io/2022/03/25/ppo-implementation-details/">13</a>) further widens the gap between theory and practice. <br>
<p></p>
A prominent area that has seen a surge of interest in RL is generative language modeling. Pre-training these models can be viewed as a form of imitation learning (<a href="https://arxiv.org/abs/2407.15007">14</a>), while post-training typically implements RL algorithms for purposes like instruction tuning with RL from human feedback or enhancing reasoning capabilities (<a href="https://arxiv.org/abs/2405.04483">15</a>). While these successes make the practical utility of RL undeniable, the RL community finds itself at a crossroads. The algorithms employed are frequently variants of classical methods, and exploring beyond these presents a key challenge. Conversely, the success of these models prompts new questions for RL theory, suggesting that frameworks leveraging pre-trained models might offer a more effective paradigm than learning from scratch under traditional assumptions (<a href="https://arxiv.org/abs/2503.07453">16</a>).<br>
<p></p>
Following the success of the neurips 2024 edition, the Second Workshop on Aligning Reinforcement Learning Experimentalists and Theorists (ARLET) aims to bridge this discrepancy and promote collaboration. By bringing together experts from both sides, we want to facilitate meaningful discussions and draw a path for future RL research. Motivated by the take-home messages from the previous edition, we seek to encourage: (i) theorists to ask experimentalists for concrete problems to solve, and (ii) experimentalists to seek theoretical guidance on how to approach these problems.
</div>

<h2 style="text-align:center;">Highlights</h2>
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

We are excited to have an <em><a href="/neurips2025/cfi">idea track</a></em> along with the canonical <a href="/neurips2025/cfp">call for papers</a>, which we hope will foster increased collaboration within the community. The talks will also be followed by a panel discussion on the current state of RL. See the <a href="/neurips2025/schedule">schedule</a> for details.

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
  {% assign neurips_speakers = site.speakers | where_exp: "item", "item.editions contains 'neurips2025'" %}
  {% assign categorized_neurips_speakers = neurips_speakers | where: "category", category %}
  {% assign sorted_speakers = categorized_neurips_speakers | sort: "importance.neurips2025" %}
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

{% assign neurips_speakers = site.speakers | where_exp: "item", "item.editions contains 'neurips2025'" %}
{% assign sorted_speakers = neurips_speakers | sort: "importance.neurips2025" %}

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