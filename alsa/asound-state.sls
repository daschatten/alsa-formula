# Manages asound.state file.

{% from "alsa/map.jinja" import map with context %}

include:
  - alsa

{%- set source = salt['pillar.get']('alsa:asound-state:source', 'salt://alsa/files/asound.state') %}

asound-state-file:
  file.managed:
    - name: {{ map.asound_state_dir }}/{{ map.asound_state_file }}
    - source: {{ source }} 

asound-state-restore:
  cmd.wait:
    - name: 'alsactl restore'
    - watch:
       - file: asound-state-file
