---
title: News
layout: single
permalink: /news/
sidebar: false
toc: false
toc_icon: "cog"
---

{%- assign news = site.news | reverse -%}
{%- for item in news %}
**{{ item.date | date: "%b %-d, %Y" }}**.&nbsp;
{%- if item.inline -%}
{{ item.content | remove: '<p>' | remove: '</p>' | emojify }}{: .notice}
{%- else -%}
<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{: .notice}
{%- endif %}
{%- endfor %}
