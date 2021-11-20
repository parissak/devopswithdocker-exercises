1.1 Getting started

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS                     PORTS     NAMES
d88889d0144b   nginx     "/docker-entrypoint.…"   8 minutes ago   Exited (0) 8 minutes ago             zealous_pascal
00b0f5c891fc   nginx     "/docker-entrypoint.…"   9 minutes ago   Exited (0) 8 minutes ago             serene_albattani
3861c66c4b1d   nginx     "/docker-entrypoint.…"   9 minutes ago   Up 9 minutes               80/tcp    condescending_allen



1.2 Cleanup

$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE



1.3 Secret message

$ docker pull devopsdockeruh/simple-web-service:ubuntu
$ docker container run -d devopsdockeruh/simple-web-service:ubuntu
$ docker ps
CONTAINER ID   IMAGE                                      COMMAND                 CREATED         STATUS         PORTS     NAMES
b15c46a12159   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   9 seconds ago   Up 8 seconds             musing_mendeleev
$ docker exec -it musing_mendeleev bash
root@b15c46a12159:/usr/src/app# cat text.log 
...
Secret message is: 'You can find the source code here: https://github.com/docker-hy'



1.4 Missing dependencies

$ docker container run -it ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                   CREATED              STATUS                        PORTS     NAMES
10331033dfdc   ubuntu    "sh -c 'echo \"Input …"   About a minute ago   Exited (127) 29 seconds ago             reverent_wright
$ docker container start 103
$ docker container exec -it 103 /bin/sh
# apt upgrade && apt update
# apt install curl
# exit
$ docker container stop 103
$ docker container start -i 103



1.5 Sizes of images

$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED        SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   8 months ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   8 months ago   15.7MB
$ docker container run -d devopsdockeruh/simple-web-service:alpine
43fd4953b50926aac754e341e0ff3e5e36902ed4b2f9703dcb0fa818b8d2bf0f
$ docker exec -it 43f sh
/usr/src/app # cat text.log
...
Secret message is: 'You can find the source code here: https://github.com/docker-hy'



1.6 Hello Docker Hub

$ docker run -it devopsdockeruh/pull_exercise
...
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message
