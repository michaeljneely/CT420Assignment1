docker build -t ct420 .
docker run -it --rm --cap-add=SYS_NICE ct420 /bin/bash
