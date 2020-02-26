<#macro render display_toc>
  <div class="toggle sidebar-toggle">
    <span class="toggle-line toggle-line-first"></span>
    <span class="toggle-line toggle-line-middle"></span>
    <span class="toggle-line toggle-line-last"></span>
  </div>

  <aside class="sidebar">
    <div class="sidebar-inner">

      {%- set display_toc = page.toc.enable and display_toc %}
      {%- if display_toc %}
        {%- set toc = toc(page.content, { "class": "nav", list_number: page.toc.number, max_depth: page.toc.max_depth }) %}
        {%- set display_toc = toc.length > 1 and display_toc %}
      {%- endif %}

      <ul class="sidebar-nav motion-element">
        <li class="sidebar-nav-toc">
          文章目录
        </li>
        <li class="sidebar-nav-overview">
          站点概览
        </li>
      </ul>

      <!--noindex-->
      <div class="post-toc-wrap sidebar-panel">
        {%- if display_toc %}
          <div class="post-toc motion-element">{{ toc }}</div>
        {%- endif %}
      </div>
      <!--/noindex-->

      <div class="site-overview-wrap sidebar-panel">
        <#include "../_partials/sidebar/site-overview.ftl">

        {{- next_inject('sidebar') }}
      </div>

      {%- if theme.back2top.enable and theme.back2top.sidebar %}
        <div class="back-to-top motion-element">
          <i class="fa fa-arrow-up"></i>
          <span>0%</span>
        </div>
      {%- endif %}

    </div>
  </aside>
  <div id="sidebar-dimmer"></div>
</#macro>
