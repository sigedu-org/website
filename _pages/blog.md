---
title: SIGEDU Blog
layout: archive
permalink: /blog/
author_profile: false
sidebar: false
read_time: false
share: true
comments: false
---

The SIGEDU blog will feature newsletters as well as blog posts from SIGEDU officers and invited guests working in educational NLP. All items are listed below in chronological order. 

{% for post in site.posts %}
  {% if post.news != "inline" %}
  {% include archive-single.html %}
  {% endif %}
{% endfor %}