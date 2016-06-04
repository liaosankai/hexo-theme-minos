{% extends '_layout.swig' %}

{% block title %}
  {{ __('category') }}:
  {{ page.category }}
{% endblock %}

{% block body %}
  {{ partial('_partial/archive', {type: 'category', index: true}) }}
{% endblock %}
