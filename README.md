# emacs
emacs modular configuration files.

To use behind proxy, add

```
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)") ]
     ("http" . "proxy.fcen.uba.ar:8080")
     ("https" . "proxy.fcen.uba.ar:8080")))
```

To be able to use ESS when R was installed compiling from source, create a symlink of the R binary in a folder within the PATH. In this case, I used /usr/local/bin.
