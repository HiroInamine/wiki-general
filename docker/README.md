## CRIAR INSTANCIA DEV AMAZON UNEAR
* Selecionar ambiente:
	* Virginia (Ambiente Dev)
	* Sao paulo (ambiente demo)
1. Launch Instance 
2. My AMIs e selecionar "base-ami-v2" instancia linux com docker   |  "base-windows-ami-v2" intancia windows
3. Tipo de instancia: t2.micro
4. configuraушes padrсo alterando apenas Network: dev-vpc
5. ajustar tamanho caso necessрrio
6. Definir name: {micro-serviуo}-{ambiente} .Ex: rule-engine-dev
7. Security Group:	front-end-sg
8. selecione uma key-pair existente no caso: dev-key-pair

----------
## Instalacao via docker

* docker pull docker.repo.unear.net/twilio-dev
* docker stop twilio
* docker rm twilio

* Para dar permissсo para diretorio: 
* sudo chmod 777 /unear

## Remover container / imagens 
* docker rm $(docker ps -aq)
* docker rmi $(docker images -aq)

* Executa acao dentro do container
* docker exec -ti <container id ou name> /bin/bash

* Lista o logs da aplicaусo
* docker logs -f <container id ou name>

EX:

docker pull docker.repo.unear.net/identity-server

> docker run -d --restart=always --name identity-server -p 80:10100 
> -e JAVA_OPTS="
-Ddb.default.url=jdbc:sqlserver://identity-db.cxgxz1hkaric.us-east-1.rds.amazonaws.com;databaseName=Account 
-Ddb.default.username=unear 
-Ddb.default.password=qwert123@ 
-Dpidfile.path=/opt/docker/RUNNING_PID_$(date +%s)" 
-v /unear:/unear docker.repo.unear.net/identity-server

--add-host=manager.oauth.dev.unear.net:54.173.26.146  # somente se nсo foi mapeado no DNS



docker pull docker.repo.unear.net/dw-agent-dev
docker stop dw-agent
docker rm dw-agent
# mapeia porta 9000 para a porta externa 80
docker run -d --name dw-agent -p 80:10900 -v /unear:/unear docker.repo.unear.net/dw-agent-dev 


Remove imagens e containers
docker rm $(docker ps -aq)
docker rmi $(docker images -aq)


docker ps -a (lista todos os containes)
docker images -a (lista todos as imagens)