server {
  listen       80;
  server_name  {{PROJECT_NGINX_VIRTUAL_HOST}};

  location / {
      root   /usr/share/nginx/html;
      index  index.html index.htm;
  }

  # Redirects to old site pages
  #RedirectMatch 301 ^/([\w-/]+)$ /$1.html
  location ~* "^/([\w-/]+)$" {
    return 301 /$1.html;
  }

  # redirect server error pages to the static page /50x.html
  #
  error_page   500 502 503 504  /50x.html;
  location = /50x.html {
      root   /usr/share/nginx/html;
  }
}

{{#PROJECT_NGINX_VIRTUAL_HOST_ALTS}}
# Redirect alternative domain names.
server {
  listen 80;
  server_name {{PROJECT_NGINX_VIRTUAL_HOST_ALTS}};
  # $scheme will get the http protocol
  # and 301 is best practice for tablet, phone, desktop and seo
  return 301 $scheme://{{PROJECT_NGINX_VIRTUAL_HOST}}$request_uri;
}
{{/PROJECT_NGINX_VIRTUAL_HOST_ALTS}}

# vim:syntax=nginx
