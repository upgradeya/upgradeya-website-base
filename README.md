# UpgradeYa website base
Development environment for UpgradeYa public website using decompose

## Requirements

- [Docker](https://www.docker.com/)
- [Docker Compose](https://www.docker.com/docker-compose)
- [decompose](https://github.com/dmp1ce/decompose)

### Usage

Download decompose scripts
```
$ decompose --update
```

Build project
```
$ decompose build
```

Start website
```
$ decompose up
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
$ decompose build && decompose up
```
