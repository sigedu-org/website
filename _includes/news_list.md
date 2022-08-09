{% assign posts = site.posts | where: "categories", "news" %}

{%- for post in posts limit: page.news_limit %}
{%- if forloop.index0 == 0 %}
<div class="notice--info">
{%- else %}
<div class="notice">
{%- endif %}
<h4>
<span>{{ post.date | date: "%b %-d, %Y" }}</span> 
<a href="{{ post.url | relative_url }}">
{%- if post.tags contains "ambassador" %}
<i class="fas fa-medal fa-fw"></i> 
{% elsif post.tags contains "newsletter" %}
<i class="fas fa-newspaper fa-fw"></i> 
{%- else %}
<i class="fas fa-bullhorn fa-fw"></i> 
{%- endif %}
{{ post.title }}
</a>
</h4>
<p>
{%- if post.news_summary == blank %}
{%- assign raw_text = post.content | strip_html %}
<!-- if the post is long and no summary has been provided, use truncated excerpt as news item-->
{%- if raw_text.size > 283 %}
{{ post.content | strip_html | truncate: 283 | markdownify }}
{%- else %}
{{ post.content | markdownify }}
{%- endif %}
{%- else %}
{{ post.news_summary | markdownify }}
{%- endif %}
</p>
<!-- For now, only allow latest news to be shared directly from the news feed.
     For older news, the post can be shared via the post itself.-->
{%- if forloop.index0 == 0 %}
<p>
<small>
Share this news on 
<a href="https://twitter.com/intent/tweet?{% if site.twitter.username %}via={{ site.twitter.username | url_encode }}&{% endif %}text={%- if post.news_summary == blank %}{{ post.content | strip_html | truncate: 280 | url_encode }}{%- else %}{{ post.news_summary | url_encode }}{%- endif %}%20{{ post.url | absolute_url | url_encode }}" class="btn btn--inverse" onclick="window.open(this.href, 'window', 'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;" title="{{ site.data.ui-text[site.locale].share_on_label | default: 'Share on' }} Twitter"><i class="fab fa-twitter fa-fw" aria-hidden="true"></i><span> Twitter</span></a>
<a href="https://www.facebook.com/sharer/sharer.php?u={{ post.url | absolute_url | url_encode }}" class="btn btn--inverse" onclick="window.open(this.href, 'window', 'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;" title="{{ site.data.ui-text[site.locale].share_on_label | default: 'Share on' }} Facebook"><i class="fab fa-facebook fa-fw" aria-hidden="true"></i><span> Facebook</span></a>
<a href="https://www.linkedin.com/shareArticle?mini=true&url={{ post.url | absolute_url | url_encode }}" class="btn btn--inverse" onclick="window.open(this.href, 'window', 'left=20,top=20,width=500,height=500,toolbar=1,resizable=0'); return false;" title="{{ site.data.ui-text[site.locale].share_on_label | default: 'Share on' }} LinkedIn"><i class="fab fa-fw fa-linkedin" aria-hidden="true"></i><span> LinkedIn</span></a>
</small>
</p>
{%- endif %}
</div>
{%- endfor %}
