FROM Ubuntu:latest
MAINTAINER ANTHONY MUCHIRI
RUN apk upgrade --update && apk add --no-cache python3 python3-dev gcc gfortran freetype-dev musl-dev libpng-dev g++ lapack-dev
RUN pip install -r Pipfile
RUN pip3 install virtualenv
RUN pip3 install — no-cache-dir numpy==1.13.0
WORKDIR "/"
EXPOSE 5001
