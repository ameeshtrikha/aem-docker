To delete all containers including its volumes use,

docker rm -vf $(docker ps -a -q)
To delete all the images,

docker rmi -f $(docker images -a -q)

Use this to delete everything:

docker system prune -a --volumes
Remove all unused containers, volumes, networks and images

WARNING! This will remove:
    - all stopped containers
    - all networks not used by at least one container
    - all volumes not used by at least one container
    - all images without at least one container associated to them
    - all build cache
https://docs.docker.com/engine/reference/commandline/system_prune/#extended-description

docker volume create author-crx 
docker volume create publish-crx 
docker build -t "aem:author" -f Dockerfile.author .
docker run -it -p 4502:4502 --mount source=author-crx,target=/opt/aem/author/crx-quickstart aem:author