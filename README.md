# caddy server for multiple service

use environments to set sites up.

* example:

environments:

```
CADDY_x_site_com=myservice:3000
CADDY_y_site_net=otherservice:8080
TLS_EMAIL=my@site.com
```

Caddyfile will be:

```
x.site.com {
  proxy / http://myservice:3000 {
    transparent
    websocket
  }
  tls my@site.com
}

y.site.net {
  proxy / http://otherservice:8080 {
    transparent
    websocket
  }
  tls my@site.com
}
```
