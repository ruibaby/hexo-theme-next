<div class="popup search-popup">
  {%- if theme.algolia_search.enable %}
    <#include "algolia-search.ftl">
  {% elif theme.local_search.enable %}
    <#include "localsearch.ftl">
  {%- endif %}
</div>
<div class="search-pop-overlay"></div>
