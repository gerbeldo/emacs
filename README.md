# emacs
emacs modular configuration files.

To use behind proxy, add

`(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "proxy.fcen.uba.ar:8080")
     ("https" . "proxy.fcen.uba.ar:8080")))`

