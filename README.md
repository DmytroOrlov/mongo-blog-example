# build Docker image
docker build --rm -t ubuntu:web-app .

# run container from this image
NAME=web-app && docker run -d -p 8082:8082 --name $NAME -v `pwd`:/root/web-app:rw ubuntu:$NAME
