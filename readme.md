# build

```bash
docker build . --tag dotfiles && run -it dotfiles
```

Remove `-it` to run headless and apt packages for controlled failures


# tools

* ag
text searech in directory/file ala grep

* direnv
directory specific environment variables

* lnav
tail -f /log but prettier

* iftop
htop for incoming/outgoing connections

* htop
htop

* rsync

* reptyr
re-pty programs

* httpie
pretty curl

* httpstat

https://github.com/reorx/httpstat
httpstat visualizes curl(1) statistics in a way of beauty and clarity

* jq
json formatter

* oping -g prettyping
ping on adderall

* jsctags


# linters
* shell: shellcheck
* js: semistandard, eslint, prettier
* json: jsonlint https://www.npmjs.com/package/jsonlint
* viml: vint https://github.com/Kuniwak/vint
* dockerfiles: hadolint https://github.com/lukasmartinelli/hadolint
* yaml: yamllint https://github.com/adrienverge/yamllint


# formatters
* js: semistandard
* json: js-beautify


# ubuntu themes
* arc-dark https://github.com/horst3180/arc-theme
* adapta https://github.com/adapta-project/adapta-gtk-theme


# sound
/etc/pulse/daemon.conf
```
  resample-method = src-sinc-best-quality
  default-sample-format = s24le
  default-sample-rate = 96000
```
pulseaudio -k
pulseaudio --start
