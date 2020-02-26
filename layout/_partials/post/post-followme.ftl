{%- if theme.follow_me %}

  <div class="followme">
    <p>欢迎关注我的其它发布渠道</p>

    <div class="social-list">
        {%- for name, value in theme.follow_me %}
            {%- set link = value.split('||')[0] | trim %}
            {%- set icon = value.split('||')[1] | trim %}

            <div class="social-item">
              <a target="_blank" class="social-link" href="{{ link }}">
                <span class="icon">
                  <i class="fa fa-{{ icon }}"></i>
                </span>

                <span class="label">{{ name }}</span>
              </a>
            </div>
        {%- endfor %}
    </div>
  </div>
{%- endif %}
