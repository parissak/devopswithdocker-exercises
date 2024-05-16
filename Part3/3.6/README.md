##  3.6
Image sizes before optimization:
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
frontend     latest    fef93b31dd23   5 minutes ago   347MB
backend      latest    8bfb41996136   8 minutes ago   1.07GB
```

Image sizes after optimization:
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    398f6703f568   3 minutes ago    309MB
backend      latest    6230401a530f   40 minutes ago   938MB
```

