<#include "brand.ftl">

<nav class="site-nav">
  <#include "menu.ftl">
</nav>

{%- if theme.algolia_search.enable or theme.local_search.enable %}
  <div class="site-search">
    <#include "../search/index.ftl">
  </div>
{%- endif %}

{{- next_inject('header') }}
