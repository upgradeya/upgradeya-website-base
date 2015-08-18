# upgradeya-website-base
Development environment for UpgradeYa public website using decompose

## Requirements

- Docker
- Docker Compose
- decompose

### Usage

Download decompose scripts
```
$ decompose --update
```

Process decompose templates
```
$ decompose --build
```

Start docker containers
```
$ docker-compose up -d
```

Start 'nginx-proxy' container (gives access to websites running in docker)
```
$ decompose start_nginx_proxy
```

Add the following to `/etc/hosts`
```
# /etc/hosts
127.0.0.1 mysite.local
```

Access website
```
$ curl mysite.local
```

Change domain name by using custom elements
```
$ echo 'PROJECT_NGINX_VIRTUAL_HOST_DEV="upgradeya.local"' > .decompose/elements
```

Rebuild templates and rebuild containers
```
$ decompose --build && docker-compose up -d
```
