{% if page.type ==='picture' %}
{%
  set js_commons = [
    'utils.js',
    'motion.js',
    'comment-locate.js',
    'minigrid.min.js',
    'photo.js'
  ]
%}
{% else %}
{%
  set js_commons = [
    'utils.js',
    'motion.js',
    'comment-locate.js'
  ]
%}
{% endif %}

{% for common in js_commons %}
  <script src="{{ url_for(theme.js) }}/{{ common }}?v={{ version }}"></script>
{% endfor %}
