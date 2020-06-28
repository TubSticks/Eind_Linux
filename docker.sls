Make sure all packages are installed:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates
      - docker-engine
      
Get the docker key:
  cmd.run:
    - name: apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    - creates: /etc/apt/sources.list.d/docker.list

Push dockerlist from saltmaster to docker server:
  file.managed:
    - name: /etc/apt/sources.list.d/docker.list
    - source: salt://docker.list

Start docker service:
  service.running:
    - name: docker
    - require:
      - pkg: docker-engine

