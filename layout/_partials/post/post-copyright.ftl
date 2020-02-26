{%- set ccIcon = '<i class="fa fa-fw fa-creative-commons"></i>' %}
{%- set ccText = theme.creative_commons.license | upper %}

<div>
<ul class="post-copyright">
  <li class="post-copyright-author">
    <strong>本文作者： </strong>
    ${user.nickname!}
  </li>
  <li class="post-copyright-link">
    <strong>本文链接： </strong>
    {{ next_url(page.permalink, page.permalink, {title: page.title}) }}
  </li>
  <li class="post-copyright-license">
    <strong>版权声明： </strong>
    {{- __('post.copyright.license_content', next_url(ccURL, ccIcon + ccText)) }}
  </li>
</ul>
</div>
