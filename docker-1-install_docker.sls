Make sure Docker is installed:
  pkg.installed:
    - pkgs:
      - docker.io

Start Docker:
  service.running:
    - name: docker
