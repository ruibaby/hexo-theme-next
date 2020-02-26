<#if settings.footer_beian_enable!false>
  <div class="beian">
    {{- next_url('http://www.beian.miit.gov.cn', theme.footer.beian.icp + ' ') }}
    {%- if theme.footer.beian.gongan_icon_url %}
    <#if settings.footer_beian_gongan_icon_url??>
      <img src="${settings.footer_beian_gongan_icon_url!}" style="display: inline-block;">
    </#if>
    {%- if theme.footer.beian.gongan_id and theme.footer.beian.gongan_num %}
      {{- next_url('http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=' + theme.footer.beian.gongan_id, theme.footer.beian.gongan_num + ' ') }}
    {%- endif %}
  </div>
</#if>

<div class="copyright">
  &copy; <#if settings.footer_since?? && settings.footer_since != .now?string('yyyy')>${settings.footer_since!} – </#if>
  <span itemprop="copyrightYear">${.now?string('yyyy')}</span>
  <span class="with-love">
    <i class="fa fa-${settings.footer_icon_name!}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder"><#if settings.footer_copyright?? && settings.footer_copyright!=''>${settings.footer_copyright!}<#else>${user.nickname!}</#if></span>

  {%- if config.symbols_count_time.total_symbols %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {%- if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.count_total') + __('symbol.colon') }}</span>
    {%- endif %}
    <span title="{{ __('symbols_count_time.count_total') }}">{{ symbolsCountTotal(site) }}</span>
  {%- endif %}

  {%- if config.symbols_count_time.total_time %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-coffee"></i>
    </span>
    {%- if theme.symbols_count_time.item_text_total %}
      <span class="post-meta-item-text">{{ __('symbols_count_time.time_total') }} &asymp;</span>
    {%- endif %}
    <span title="{{ __('symbols_count_time.time_total') }}">{{ symbolsTimeTotal(site, theme.symbols_count_time.awl, theme.symbols_count_time.wpm, __('symbols_count_time.time_minutes')) }}</span>
  {%- endif %}
</div>

<#if settings.footer_powered_enable!true>
  <div class="powered-by">
    由 <a href="https://halo.run" target="_blank" class="theme-link">Halo</a> 强力驱动
    <#if settings.footer_powered_version!true> v${version!}</#if>
  </div>
</#if>

<#if settings.footer_powered_enable!true && settings.footer_theme_enable!true>
  <span class="post-meta-divider">|</span>
</#if>

<#if settings.footer_theme_enable!true>
  <div class="theme-info">
    主题 – <a class="theme-link" href="https://${settings.scheme?lower_case}.theme-next.org">NexT.${settings.scheme!}</a>
    <#if settings.footer_theme_version!true> v${theme.version!}</#if>
  </div>
</#if>

{%- if theme.add_this_id %}
  <div class="addthis_inline_share_toolbox">
    <script src="//s7.addthis.com/js/300/addthis_widget.js#pubid={{ theme.add_this_id }}" async="async"></script>
  </div>
{%- endif %}

{{- next_inject('footer') }}
