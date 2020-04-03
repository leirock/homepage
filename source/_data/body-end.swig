{% if page.type ==='picture' %}
  <script src="{{ url_for(theme.js) + '/photos.js' }}"></script>
  <script src="https://cdn.jsdelivr.net/npm/minigrid@3.1.1/dist/minigrid.min.js"></script>
{% elif page.type === 'friends' %}
  <script src="{{ url_for(theme.js) + '/friends.js' }}"></script>
{% endif %}

{% if page.comments or post.comments %}
  <script src="{{ url_for(theme.js) + '/comment-locate.js' }}"></script>
{% endif %}
