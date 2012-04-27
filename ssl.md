SSL authentication with mcollective
===================================

You can reuse your puppet certificates, e.g. on Ubuntu

```
  # Plugins
  securityprovider = ssl
  plugin.ssl_server_private = /var/lib/puppet/ssl/private_keys/{{ fqdn }}.pem
  plugin.ssl_server_public = /var/lib/puppet/ssl/public_keys/{{ fqdn }}.pem
  plugin.ssl_client_cert_dir = /etc/mcollective/ssl/clients/
```