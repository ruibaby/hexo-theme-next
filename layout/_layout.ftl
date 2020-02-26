<#macro top>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <#include "_partials/head/head.ftl">
  <#include "_partials/head/head-unique.ftl">
  {{- next_inject('head') }}
  <title>{% block title %}{% endblock %}</title>
  <#include "_third-party/analytics/index.ftl">
  <#include "_scripts/noscript.ftl">
</head>

<body itemscope itemtype="http://schema.org/WebPage">
  <div class="container{%- if theme.motion.enable %} use-motion{%- endif %}">
    <div class="headband"></div>

    <header class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"><#include "_partials/header/index.ftl"></div>
    </header>

    <#include "_partials/widgets.ftl">

    <main class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <#include "_partials/header/sub-menu.ftl">
          <div class="content">
            <#nested />
</#macro>
<#macro bottom>
          </div>
          <#--<#include "_partials/comments.ftl">-->
        </div>
        {%- if theme.sidebar.display !== 'remove' %}
          <#nested />
        {%- endif %}
      </div>
    </main>

    <footer class="footer">
      <div class="footer-inner">
        <#include "_partials/footer.ftl">
        <#include "_third-party/statistics/index.ftl">
      </div>
    </footer>
  </div>

  <#include "_scripts/index.ftl">
  <#include "_third-party/index.ftl">

  {%- if theme.pjax %}
    <div id="pjax">
  {%- endif %}
  <#include "_third-party/math/index.ftl">
  <#include "_third-party/quicklink.ftl">

  {{- next_inject('bodyEnd') }}
  {%- if theme.pjax %}
    </div>
  {%- endif %}
</body>
</html>
</#macro>
