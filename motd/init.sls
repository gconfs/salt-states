motd_file:
  file.managed:
    - name:     '/etc/motd'
    - source:   salt://motd/motd.content
    - user:     root
    - group:    root
    - mode:     644
    - template: jinja
