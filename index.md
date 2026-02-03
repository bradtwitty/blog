---
layout: default
title: Home
---

# {{ site.title }}

*{{ site.description }}*

{% for post in site.posts limit:10 %}
<article>
  <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
  <time>{{ post.date | date: "%B %d, %Y" }}</time>
  {{ post.content }}
  <hr>
</article>
{% endfor %}
