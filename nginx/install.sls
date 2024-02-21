nginx:
  pkgrepo.managed:
    - humanname: nginx
    - file: /etc/apt/sources.list.d/nginx.list
    - name: deb http://nginx.org/packages/ubuntu {{ grains['oscodename'] }} nginx
    - key_url: https://nginx.org/keys/nginx_signing.key
    - enabled: True
    - clean_file: True
  pkg.installed:
    - require:
      - pkgrepo: nginx
