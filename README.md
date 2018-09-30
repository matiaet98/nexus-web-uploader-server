# Nexus Web Uploader server

*Nota: Este container depende de otros dos:*
- https://github.com/matiaet98/nexus-web-uploader-api (API Rest)
- https://github.com/matiaet98/nexus-web-uploader-ui (Web App)

## Construccion de la imagen

~~~
docker build -t nexus-web-uploader-srv:1.0.0 .
~~~

*En lugar de 1.0.0 va la version de la imagen*

## Taggear como última *(opcional)*

~~~
docker tag nexus-web-uploader-server:1.0.0 nexus-web-uploader-srv:latest
~~~

## Correr aplicacion (iniciar el container)

Para iniciar el container se utiliza el siguiente comando

~~~
docker network create nwu-net
docker run -d --name nwu-api --network nwu-net nexuswebuploaderapi
docker run -d --name nwu-ui --network nwu-net nexus-web-uploader-ui
docker run -d -p 80:80 --name nwu-srv --network nwu-net nexus-web-uploader-srv
~~~

## Parar container

Para parar y eliminar el container se utiliza la siguiente sentencia

~~~
docker stop nwebup
docker rm nwebup
docker network rm nwu-net
~~~

*Nota: Esto no elimina la imagen*

## Eliminar imagen construida

Si queremos hacer espacio, se puede borrar las imagenes de la suguiente manera:

~~~
docker rmi nexus-web-uploader-srv:1.0.0
~~~

Tambien se pueden remover tags:

~~~
docker rmi nexus-web-uploader-srv:latest
~~~

## Ingresar al container

Si fuese necesario ingresar al container para realizar alguna verificacion, se puede con el comando:

~~~
docker exec -it nwu-srv /bin/sh
~~~