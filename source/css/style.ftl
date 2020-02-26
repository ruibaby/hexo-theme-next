<style>
  <#if settings.darkmode!false>
    @media (prefers-color-scheme: dark) {
      :root {
        --body-bg-color: #121212;
        --content-bg-color: #1d1d1d;
        --card-bg-color: #282828;
        --text-color: #e1e1e1;
        --link-color: #e1e1e1;
        --link-hover-color: #fff;
        --brand-color: #fff;
        --brand-hover-color: #fff;
        --table-row-odd-bg-color: #282828;
        --table-row-hover-bg-color: #363636;
        --menu-item-bg-color: #333;
      }
      img {
        opacity: 0.75;
      }
      img:hover {
        opacity: 1;
      }
    }
  </#if>

  <#if settings.creative_commons_post!false>
    .post-copyright {
      background: #f5f5f5;
      border-left: 3px solid #ff1700;
      list-style: none;
      margin: 2em 0 0;
      padding: .5em 1em;
    }
  </#if>
</style>
