.PHONY: image run bash

IMAGE=wicaksana/nginx-mezzanine

image:
        docker build -t $(IMAGE)

bash:
        docker run -it $(IMAGE) /bin/bash
