{% if config.disqus_shortname %}
  <script>
    var disqus_shortname = '{{ config.disqus_shortname }}';
    {% if page.permalink %}
      var disqus_url = '{{ page.permalink }}';
    {% endif %}

    (function () {
      var dsq = document.createElement('script');
      dsq.type = 'text/javascript';
      dsq.async = true;
      dsq.src = '//' + disqus_shortname + '.disqus.com/{{ page.comments ? 'embed.js' : 'count.js' }}';
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
  </script>
{% endif %}

<script src="{{ url_for(config.root + 'js/jquery.min.js') }}"></script>

{% if theme.fancybox %}
  {{ css('fancybox/jquery.fancybox') }}
  {{ js('fancybox/jquery.fancybox.pack') }}
{% endif %}

{{ js('js/script') }}
