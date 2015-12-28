criação instancia amazon para ambiente DEV
- Selecionar Virginia (Ambiente Dev)
* Sao paulo (ambiente demo)
- Launch Instance 
Step 1 - My AMIs e selecionar "base-ami-v2" instancia linux com docker   |  "base-windows-ami-v2" intancia windows
Step 2 - Tipo de instancia: t2.micro
Step 3 - configurações padrão alterando apenas Network: dev-vpc
Step 4 - ajustar tamanho caso necessário
Step 5 - Definir name: {micro-serviço}-{ambiente} .Ex: rule-engine-dev
Step 6: Security Group:	front-end-sg
Step 7: selecione uma key-pair existente no caso: dev-key-pair



----------
Instalacao via docker

docker pull docker.repo.unear.net/twilio-dev
docker stop twilio
docker rm twilio

Para dar permissão para diretorio: 
sudo chmod 777 /unear

#Remover container / imagens 
docker rm $(docker ps -aq)
docker rmi $(docker images -aq)

Executa acao dentro do container
docker exec -ti <container id ou name> /bin/bash

Lista o logs da aplicação
docker logs -f <container id ou name>

EX:
docker pull docker.repo.unear.net/identity-server

docker run -d --restart=always --name identity-server -p 80:10100 
-e JAVA_OPTS="
-Ddb.default.url=jdbc:sqlserver://identity-db.cxgxz1hkaric.us-east-1.rds.amazonaws.com;databaseName=Account 
-Ddb.default.username=unear 
-Ddb.default.password=qwert123@ 
-Dpidfile.path=/opt/docker/RUNNING_PID_$(date +%s)" 
-v /unear:/unear docker.repo.unear.net/identity-server

--add-host=manager.oauth.dev.unear.net:54.173.26.146  # somente se não foi mapeado no DNS



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