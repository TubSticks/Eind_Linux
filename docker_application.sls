Repository of docker_app:
  dockerng.image_present:
    - force: true
    - name: repo/docker_app:latest

docker_app:
  dockerng.running:
    - name: docker_app
    - image: repo/docker_app:latest
    - port_bindings: 80:80

