{#
  archives for post
#}
{% if type == 'archive' %}

  {% for year, posts in posts_group_by_year(page.posts) %}
    <section class="archives-wrap">
      <div class="archive-year-wrap">
        <a href="{{ url_for('archives/' + year) }}" class="archive-year">
          {{ year }}
        </a>
      </div>
      <div class="archives">
        {% for i, post in posts %}
          {{ partial('archive-post', {post: post, archive: true}) }}
        {% endfor %}
      </div>
    </section>
  {% endfor %}

{% endif %}

{#
  archives for category
#}
{% if type == 'category' %}
  <section class="archives-wrap">
    <div class="archive-category-wrap">
      <span class="archive-category">#{{ page.category }}</span>
    </div>
    <div class="archives">
      {% for i, post in page.posts %}
        {{ partial('archive-post', {post: post, archive: false}) }}
      {% endfor %}
    </div>
  </section>
{% endif %}

{#
  archives for tag
#}
{% if type == 'tag' %}
  <section class="archives-wrap">
    <div class="archive-tag-wrap">
      <span class="archive-tag">#{{ page.tag }}</span>
    </div>
    <div class="archives">
      {% for i, post in page.posts %}
        {{ partial('archive-post', {post: post, archive: false}) }}
      {% endfor %}
    </div>
  </section>
{% endif %}

{#
  index for post
#}
{% if type == '' %}
  {% for i, post in page.posts %}
    {{ partial('article', {post: post, index: true}) }}
  {% endfor %}
{% endif %}

{#
  pagination
#}
{% if page.total > 1 %}
  <nav id="page-nav">
    {{ paginator({  prev_text: '&laquo; ' + __('nav.prev'),  next_text: __('nav.next') + ' &raquo;'}) }}
  </nav>
{% endif %}
