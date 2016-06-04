<!DOCTYPE html>
<html>

  {{ partial('_partial/head') }}

  <body>

    <div id="container">

      {{ partial('_partial/header', null, { cache: !config.relative_link}) }}

      <section id="main" class="outer">
        {% block body %}
          {# main content #}
        {% endblock %}

      </section>

      {{ partial('_partial/footer', null, { cache: !config.relative_link}) }}

      {{ partial('_partial/after-footer') }}
    </div>

  </body>

</html>
