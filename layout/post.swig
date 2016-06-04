{% extends '_layout.swig' %}

{% block body %}
  {{ partial('_partial/article', {post: page, index: false}) }}
{% endblock %}
