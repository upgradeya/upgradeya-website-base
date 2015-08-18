web:
  build: containers/web/.
  environment:
    - VIRTUAL_HOST={{PROJECT_NGINX_VIRTUAL_HOST_DEV}}
  volumes:
    - {{#DEVELOPMENT}}./containers/web/html:{{/DEVELOPMENT}}/usr/share/nginx/html

# vim:syntax=yaml
