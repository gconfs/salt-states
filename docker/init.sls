docker_repo:
 pkgrepo.managed:
    - humanname:  Docker.io
    - name:       deb https://apt.dockerproject.org/repo debian-jessie main
    - file:       /etc/apt/sources.list.d/docker.list
    - keyid:      58118E89F3A912897C070ADBF76221572C52609D
    - keyserver:  hkp://p80.pool.sks-keyservers.net:80
    - require_in:
      - pkg: docker-engine


docker_pkg:
  pkg.installed:
    - name: docker-engine

docker_service:
  service.running:
    - name:     docker
    - enable:   True
