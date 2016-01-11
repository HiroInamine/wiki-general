# Docker useful commands

### Docker basic commands
* `docker pull <name>` - Pull an image or a repository
    > docker pull docker.repo.unear.net/twilio-dev
* `docker run [OPTIONS] <image> [command]` - Run a command in a new container
    > docker run -d --restart=always --name identity-server -p 80:10100
* `docker stop <container>` - Stop a container
    > docker stop twilio
* `docker rm <container>` - Remove a container
    > docker rm twilio
* `docker ps -a` - List containers
* `docker images -a` - List images
* `docker rmi $(docker images -q)`- Remove all images
* `docker rm $(docker ps -aq)` - Remove all containers
* `docker stop $(docker ps -a -q)` - Stop all containers
* `docker logs -f <container>` - log commands
* `docker exec [OPTIONS] <container> <command>` - runs a new command in a running container
    > docker exec -ti twilio /bin/bash


#### Example command flow
     docker pull docker.repo.unear.net/identity-server

    docker run -d --restart=always --name identity-server -p 80:10100
    -e JAVA_OPTS="-Ddb.default.url=jdbc:sqlserver://identity-db.cxgxz1hkaric.us-east-1.rds.amazonaws.com;databaseName=Account
    -Ddb.default.username=unear
    -Ddb.default.password=qwert123@
    -Dpidfile.path=/opt/docker/RUNNING_PID_$(date +%s)"
    -v /unear:/unear docker.repo.unear.net/identity-server
    --add-host=manager.oauth.dev.unear.net:54.173.26.146  # somente se nao foi mapeado no DNS

    docker stop identity-server

    docker rm identity-server


