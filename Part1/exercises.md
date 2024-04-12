##  1.1 Getting started
```
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                      PORTS     NAMES
e63b9953b3cb   nginx     "/docker-entrypoint.…"   42 seconds ago   Exited (0) 17 seconds ago             funny_aryabhata
9b3d17010667   nginx     "/docker-entrypoint.…"   43 seconds ago   Exited (0) 12 seconds ago             suspicious_driscoll
4dc0199d7b04   nginx     "/docker-entrypoint.…"   46 seconds ago   Up 45 seconds               80/tcp    gallant_robinson
```

##  1.2 Cleanup
```
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
$ docker image ls
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

## 1.3 Secret message
```
$ docker pull devopsdockeruh/simple-web-service:ubuntu
$ docker container run -d devopsdockeruh/simple-web-service:ubuntu 
$ docker ps -a
CONTAINER ID   IMAGE                                      COMMAND                 CREATED         STATUS         PORTS     NAMES
7d2d8fb89a8a   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   5 seconds ago   Up 4 seconds             sleepy_goldberg
$ docker exec -it sleepy_goldberg bash 
root@80ceb47d1ec4:/usr/src/app# tail -f ./text.log
...
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## 1.4 Missing dependencies
```
$ docker container run -it ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;
$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                   CREATED         STATUS         PORTS     NAMES
35397d35983d   ubuntu    "sh -c 'echo \"Input …"   3 minutes ago   Up 3 minutes             eager_moser
$ docker exec -it eager_moser bash
root@35397d35983d:/# apt-get update
root@35397d35983d:/# apt install curl
```

## 1.5 Sizes of images
```
$ docker pull devopsdockeruh/simple-web-service:ubuntu
$ docker pull devopsdockeruh/simple-web-service:alpine
$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 years ago   15.7MB
$ docker run -d devopsdockeruh/simple-web-service:alpine
$ docker ps -a
CONTAINER ID   IMAGE                                      COMMAND                 CREATED          STATUS          PORTS     NAMES
226b62b64e20   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"   17 minutes ago   Up 17 minutes             vigorous_lewin
$ docker exec -it vigorous_lewin sh
# tail -f ./text.log
...
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

## 1.6 Hello Docker Hub
```
$ docker run -it devopsdockeruh/pull_exercise
...
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```
