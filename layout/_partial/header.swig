<header id="header">
  <div id="header-outer" class="outer">
    <div id="header-inner" class="inner">
      <a id="main-nav-toggle" class="nav-icon" href="javascript:;"></a>
      <a id="logo" class="logo {{ theme.logo_text ? 'logo-text' : '' }}" href="{{ url_for('/') }}">
        {{ theme.logo_text ? theme.logo_text : '' }}
      </a>
      <nav id="main-nav">
        {% for i,opt in theme.menu %}
          <a class="main-nav-link" href="{{ url_for(theme.menu[i]) }}">
            {{ __(opt)|capitalize }} 
          </a>
        {% endfor %}
      </nav>
      <nav id="sub-nav">
        <div id="search-form-wrap">
          {{ search_form({button: '&#xF002;'}) }}
        </div>
      </nav>
    </div>
  </div>
</header>
