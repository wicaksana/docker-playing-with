.PHONY: image bash

IMAGE=wicaksana/memcached

image:
        docker build -t $(IMAGE)

bash:
        docker run -it $(IMAGE) /bin/bash