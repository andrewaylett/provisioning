apache2:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - requires:
      - pkg: apache2
    - watch:
      - file: /var/www/html/index.html

/var/www/html/index.html:
  file.managed:
    - source: salt://web/index.html
    - user: root
    - group: root
    - mode: 644
