<#include "layout/_layout.ftl">
<#--{% import '_macro/sidebar.swig' as sidebar_template with context %}-->
<#import "layout/_macro/sidebar.ftl" as sidebar_template>

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}
<@top>

  <div class="posts-expand">
    {%- for post in page.posts.toArray() %}
      {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
    {%- endfor %}
  </div>

  {% include '_partials/pagination.swig' %}

</@top>

<@bottom>
  <@sidebar_template.render false />
</@bottom>
