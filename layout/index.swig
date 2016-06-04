{% extends '_layout.swig' %}

{% block title %}
  {{ __('category') }}:
  {{ page.title }}
{% endblock %}

{% block body %}
  {{ partial('_partial/archive', {type: '', index: true }) }}
{% endblock %}
