---
layout: page
permalink: /schedule/
title: Schedule
description: The session will cover invited talks, contributed talks and posters. The tentative schedule in Central European Summer Time (GMT+2) can be found below.
nav: true
nav_order: 3
---

<br>

<div>
<table class="table" id="standings" style="border-collapse:collapse">
<tr class="header" style="background-color:rgb(215, 215, 215); border-top: 1pt solid white; border-bottom: 1pt solid black;">
        <th style="border-top-left-radius: 10px; width: 15%">Time</th>
        <!-- <th>Virtual link</th> -->
        <th style="width: 15%">Type</th>
        <th style="width: 70% border-top-right-radius: 10px;">Title & Speakers</th>
        <!-- <th style="width: 25% border-top-right-radius: 10px;">Speakers (Affiliations)</th> -->
      </tr>
      <tr>
  <tr class="header" style="cursor: pointer">
    <td>9:00 a.m.</td>
    <td></td>
    <td>Opening Remarks</td>
  </tr>
  <!-- <tr>
    <td></td>
    <td></td>
    <td>
      TBD
    </td>
  </tr> -->
              
  <tr class="header" style="cursor: pointer">
    <td>9:05 a.m.</td>
    <td>Invited Talk</td>
    <td>
            <i>The Rise of Reinforcement Learning: from One to Many</i>
            <br>
            <b>Niao He</b> (ETH Zurich)
            <br><br>
            Reinforcement learning (RL), combined with deep neural networks, is key to the boom of recent AI breakthroughs from game mastery to control automation.  However, their successes are overly reliant on brute-force computing power and engineering tricks, leaving wide gaps between practice and theory.  The lack of theoretical foundations is even more pronounced as we shift from single-agent to many-agent RL, in addressing complex dynamic systems and decision making such as resource allocation, traffic management, and social interaction.  The challenges inherent in learning many-agent systems stem not only from the increased computational and strategic complexities but also from practical limitations in coordination and exploration.    In this talk, I will shed light on promising principles that break the curses of many-agent RL, focusing on mean-field approximation theory, statistical complexity, and independent learning. This will further pave the way for scalable and principled solutions to unlock the full potential of RL for next-generation AI.
    </td>
  </tr>
  <!-- <tr>
    <td></td>
    <td></td>
    <td>
      TBD
    </td>
  </tr> -->

  <tr class="header" style="cursor: pointer">
    <td>10:00 a.m.</td>
    <td>Invited Talk</td>
    <td>
            <i>Is Behavior Cloning All You Need? Understanding Horizon in Imitation Learning</i>
            <br>
            <b>Dylan Foster</b> (Microsoft Research)
            <br><br>
            Imitation learning (IL) aims to mimic the behavior of an expert in a sequential decision making task by learning from demonstrations, and has been widely applied to robotics, autonomous driving, and autoregressive language generation. The simplest approach to IL, behavior cloning (BC), is thought to incur sample complexity with unfavorable quadratic dependence on the problem horizon, motivating a variety of different online algorithms that attain improved linear horizon dependence under stronger assumptions on the data and the learner’s access to the expert.
<br>
            In this talk, we revisit the apparent gap between offline and online IL from a learning-theoretic perspective, with a focus on general policy classes up to and including deep neural networks. Through a new analysis of behavior cloning with the logarithmic loss, we will show that it is possible to achieve horizon-independent sample complexity in offline IL whenever (i) the range of the cumulative payoffs is controlled, and (ii) an appropriate notion of supervised learning complexity for the policy class is controlled. When specialized to stationary policies, this implies that the gap between offline and online IL is not fundamental. We will then discuss implications of this result and investigate the extent to which it bears out empirically.
    </td>
  </tr>
  <!-- <tr>
    <td></td>
    <td></td>
    <td>
      
    </td>
  </tr> -->

  <tr class="header">
      <!-- <tr> -->
        <td>10:45 a.m.</td>
        <td></td>
        <td>Break</td>
  </tr>

  <tr class="header" style="cursor: pointer">
    <td>11:00 a.m.</td>
    <td>Invited Talk</td>
    <td>
            <i>Reinforcement Learning at the Hyperscale</i>
            <br>
            <b>Jakob Foerster</b> (University of Oxford)
            <br><br>
            Deep reinforcement learning is currently undergoing a revolution of scale, fuelled by jointly running the environment, data collection, and training loop on the GPU, which has resulted in orders of magnitude of speed-up for many tasks.
<br>
            In this talk I start by presenting examples of our recent work which have been enabled by this revolution, spanning multi-agent RL, meta-learning, and environment discovery. I will end the talk by outlining failure modes of relying on GPU accelerated environments and possible paradigms for the community to collectively address them, ranging from promising research directions to novel evaluation protocols.
    </td>
  </tr>
  <!-- <tr>
    <td></td>
    <td></td>
    <td>
      
    </td>
  </tr> -->

  <tr class="header">
    <td>11:45 a.m.</td>
    <td>Contributed Talks</td>
    <td>
            <i>Is Value Learning Really the Main Bottleneck in Offline RL?</i>
            <br>
            <b>Seohong Park</b> (UC Berkeley)
            <br><br>
            <i>REBEL: Reinforcement Learning via Regressing Relative Rewards</i>
            <br>
            <b>Gokul Swamy</b> (Cornell University)
            <br><br>
            <i>Partially Observable Multi-Agent Reinforcement Learning using Mean Field Control</i>
            <br>
            <b>Kai Cui</b> (TU Darmstadt)
            <br><br>
            <i>Information Theoretic Guarantees For Policy Alignment in Large Language Models</i>
            <br>
            <b>Youssef Mroueh</b> (IBM Research)
    </td>
  </tr>

  <tr class="header">
      <!-- <tr> -->
        <td>12:25 p.m.</td>
        <td></td>
        <td>Lunch Break</td>
  </tr>

  <tr class="header" style="background-color:rgb(240, 240, 240);">
      <!-- <tr> -->
        <td>1:25 p.m.</td>
        <td></td>
        <td><b>Poster Session 1</b> </td>
  </tr>



  <tr class="header" style="background-color:rgb(240, 240, 240);">
    <td>2:25 p.m.</td>
    <td>Panel Discussion</td>
    <td>
      Moderator: <b>Csaba Szepesvari</b> (University of Alberta)
      <br>
      <b>Marcello Restelli</b> (Politecnico di Milano), 
      <b>Sergey Levine</b> (UC Berkeley),
      <b>Akshay Krishnamurthy</b> (Microsoft Research),
      <b>Martha White</b> (University of Alberta)
    </td>
  </tr>

  <tr class="header">
      <!-- <tr> -->
        <td>3:25 p.m.</td>
        <td></td>
        <td>Coffee Break</td>
  </tr>

  <tr class="header">
    <td>3:40 p.m.</td>
    <td>Contributed Talks</td>
    <td>
            <i>A Unified Confidence Sequence for Generalized Linear Models, with Applications to Bandits</i>
            <br>
            <b>Kwang-Sung Jun</b> (University of Arizona)
            <br><br>
            <i>Transductive Active Learning with Application to Safe Bayesian Optimization</i>
            <br>
            <b>Jonas Hübotter</b> (ETH Zurich)
    </td>
  </tr>

  <tr class="header" style="background-color:rgb(240, 240, 240);">
      <!-- <tr> -->
        <td>4:00 p.m.</td>
        <td></td>
        <td><b>Poster Session 2</b></td>
  </tr>

<!-- </table> -->
<!-- </div> -->
