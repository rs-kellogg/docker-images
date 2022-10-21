#docker run -ti --rm -v /Users/willthompson/.aws:/home/root/.aws -p 5000:8888 rskellogg/aws-athena-image
# docker run --rm -p 8888:8888 rskellogg/jupyter-image
docker run -it --rm -p 8888:8888 -v "${PWD}":/apps rskellogg/aws-athena-image:latest
