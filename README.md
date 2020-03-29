godot engine server on alpine linux

utilisation:
`sudo docker run -it -v /path/to/godot/project/server:/home/workspace godot-server`

docker-compose: 

``
version: '3.0'
services:
  dokuwiki:
    image: 'tarzan79/godot-server:latest'
    volumes:
      - project:/bitnami
``