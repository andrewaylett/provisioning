apache2:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - requires:
      - pkg: apache2
