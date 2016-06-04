{% if config.disqus_shortname %}
  <script>
    var disqus_shortname = '{{ config.disqus_shortname }}';

    {% if page.permalink %}
      var disqus_url = '{{ page.permalink }}';
    {% endif %}

    {% if page.comments %}
      var js = 'embed.js';
    {% else %}
      var js = 'count.js';
    {% endif %}

    (function () {
      var d = document;
      var s = d.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = '//' + disqus_shortname + '.disqus.com/' + js;
      s.setAttribute('data-timestamp', + new Date());
      (d.head || d.body).appendChild(s);
    })();
  </script>
{% endif %}

<script src="{{ url_for(config.root + 'js/jquery.min.js') }}"></script>

{% if theme.fancybox %}
  {{ css('fancybox/jquery.fancybox') }}
  {{ js('fancybox/jquery.fancybox.pack') }}
{% endif %}

{{ js('js/script') }}
