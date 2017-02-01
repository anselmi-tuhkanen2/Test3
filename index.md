---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
---
 
foo2: {{ site.data | jsonify}}

prods:
{% for product in site.data.products %}
{{ product.name }}
{% endfor %}

inventory4: {{ site.data.inventory }}

