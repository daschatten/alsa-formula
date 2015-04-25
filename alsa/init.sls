# Installs alsa-utils.

{% from "alsa/map.jinja" import map with context %}

alsa_packages:
  pkg.installed:
    - pkgs:
      {%- for pkg in map.pkgs %}
        - {{ pkg }}
      {%- endfor %}
