.PHONY: image bash

IMAGE=wicaksana/certs

image:
        docker build -t $(IMAGE)

bash:
        docker run -ti $(IMAGE) /bin/bash