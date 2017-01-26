---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---
secret: {{ site.data.secret }}

data:
{% for member in site.data.json %}
  Hello {{ member[1].title }}
{% endfor %}
