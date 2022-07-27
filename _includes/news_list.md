{% assign posts = site.posts | where: "categories", "news" %}

{%- for post in posts limit: page.news_limit %}
**{{ post.date | date: "%b %-d, %Y" }}.**
{%- if post.inline %}
{{ post.content | remove: '<p>' | remove: '</p>' | emojify }}&nbsp;
{%- else %}
{{ post.news }} Read more in this blog post: <a href="{{ post.url | relative_url }}">{{ post.title }}</a>.
{%- endif %}
{%- if post.categories contains "guest" %}
{: .notice--info}
{%- else %}
{: .notice}
{%- endif %}
{%- endfor %}
