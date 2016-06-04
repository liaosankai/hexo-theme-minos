{% extends '_layout.swig' %}

{% block title %}
  {{ __('tag') }}:
  {{ page.tag }}
{% endblock %}

{% block body %}
  {{ partial('_partial/archive', {type: 'tag', index: true}) }}
{% endblock %}
