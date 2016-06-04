{% extends '_layout.swig' %}

{% block body %}
  <section class="layout-wrap">
    <div class="layout-title">
      <span>{{ page.title }}</span>
    </div>
    <div class="layout-wrap-inner tag-cloud">
      {% if site.tags.length %}
        {{ tagcloud({min_font: 14, max_font: 28}) }}
      {% endif %}
    </div>
  </section>
{% endblock %}
