##  3.7
Image sizes before optimization:
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    398f6703f568   3 minutes ago    309MB
backend      latest    6230401a530f   40 minutes ago   938MB
```

Image sizes after optimization (the frontend was already using Alpine variant):
```
$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    3230ade5ea25   37 seconds ago   309MB
backend      latest    b7d3abce13c0   4 minutes ago    249MB
```

