<head>
  <meta charset="utf-8">

  <title>

    {% if is_archive() %}
      {{ __('archives') }}
      {% if is_month() %}
        :
        {{ page.year }}
        /
        {{ page.month }}
      {% elseif is_year() %}
        :
        {{ page.year }}
      {% endif %}
    {% elseif is_category() %}
      {{ __('category') }}:
      {{ page.category }}
    {% elseif is_tag() %}
      {{ __('tag') }}:
      {{ page.tag }}
    {% else %}
      {{ page.title }}
    {% endif %}

  </title>

  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  {{ open_graph({twitter_id: theme.twitter, google_plus: theme.google_plus, fb_admins: theme.fb_admins, fb_app_id: theme.fb_app_id}) }}

  {% if theme.rss %}
    <link rel="alternative" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml">
  {% endif %}

  {% if theme.favicon %}
    <link rel="icon" href="{{ theme.favicon }}">
  {% endif %}

  <link href="{{ url_for(config.root + 'webfonts/ptserif/main.css') }}" rel='stylesheet' type='text/css'>
  <link href="{{ url_for(config.root + 'webfonts/source-code-pro/main.css') }}" rel="stylesheet" type="text/css">

  {{ css('css/style') }}
  {{ partial('google-analytics') }}

</head>
