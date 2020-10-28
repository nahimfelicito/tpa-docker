# Docker deployment

First: Install [DOCKER](https://docs.docker.com/engine/install/ubuntu/)

Second: Launch mysql container

```console
foo@bar:~$ docker run --name mysql-persona -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=db_persona -p 3306:3306 -d mysql:latest
foo@bar:~$
```

You can change mysql container config but do not forget it to change aplication properties too.

Third: Launch api-persona with a link to the first container

```console
foo@bar:~$ docker run --name apipersona -p 9000:9000 -i -t --link mysql-persona:mysql api-persona1.0
foo@bar:~$
```