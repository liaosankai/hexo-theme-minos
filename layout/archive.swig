{% extends '_layout.swig' %}

{% block title %}
  {{ __('archives') }}
  {% if is_month() %}
    : {{ page.year}}
    /
    {{ page.month }}
  {% else %}
    : {{ page.year}}
  {% endif %}
{% endblock %}

{% block body %}
  {{ partial('_partial/archive', {type: 'archive', index: true}) }}
{% endblock %}
