# spring-boot-hello-world
Simple web page for environment testing purpose.

docker build -t {image-name} .

docker container create --name {container-name} -p 8080:8080 {image-name}
