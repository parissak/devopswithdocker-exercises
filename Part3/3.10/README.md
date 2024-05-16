##  3.10

For this exercise, I used a Dockerfile we created in exercise 1.11 (the old spring example project).

I optimized the Dockerfile by reducing the image size and adding a non-root user.

Image ('Dockerfile.before') size before optimization:
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
spring       latest    6bc2ca5b3c72   8 seconds ago   435MB
```

Image ('Dockerfile.after') size after optimization:
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
spring       latest    6939e4f37299   7 seconds ago   218MB
```
