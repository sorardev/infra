# Infra

## Start containers

`docker-compose up -d --remove-orphans`

## Nexus

- username: admin
- password: ` docker-compose exec nexus cat /nexus-data/admin.password`

### Nexus-pypi

- create nexus python-proxy with url(https://pypi.org)
- create nexus python-hosted
- create nexus python
- install twine: ```pip3 install twine```
- upload your lib: ```twine upload --repository-url=http://localhost:1000/repository/python-hosted/ name_lib.tar.gz```

### Nexus-npm

- create nexus npm-proxy with url(https://pypi.org)
- create nexus npm-hosted
- create nexus npm -```npm config set registry http://localhost:1000/repository/npm/```
  -```npm login --registry=http://localhost:1000/repository/npm/```
  -```npm publish {{packageName}}```

## Jenkins

- Admin password: `docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

## Sonar

- username: admin
- password: admin

## Stop/Down containers

- `docker-compose stop `
- `docker-compose down `

## Ansible (Server installation)  Centos/Debian

- Install python3 in Centos Servers
  ```yum install -y python3```
- Rename `hosts.example` to `hosts`
- Replace `0.0.0.0` with your servers ip
- Run ansible image docker and install playbooks
  ```docker run -it --rm -v "$(pwd)/ansible":/ansible -v $HOME/.ssh/:/root/.ssh/ -w /ansible ckechad/ansible sh install_server.sh```

## Nexus (local)

- up `docker-compose -f nexus.docker-compose.yml up -d`
- down `docker-compose -f nexus.docker-compose.yml down`
- Open in browser [Nexus](http://localhost:1000/)

## Nexus (Prod)

- `git clone https://github.com/ckec/infra.git`
- `cd infra/`
- `cp traefik/nexus.traefik.yml.example traefik/traefik.yml`
- up `docker-compose -f nexus.prod.docker-compose.yml up -d`
- down `docker-compose -f nexus.prod.docker-compose.yml down`

## Jenkins (local)

- up `docker-compose -f jenkins.docker-compose.yml up -d`
- down `docker-compose -f jenkins.docker-compose.yml down`
- Open in browser [Jenkins](http://localhost:1001/)

## Jenkins (Prod)

- `git clone https://github.com/ckec/infra.git`
- `cd infra/`
- `cp traefik/jenkins.traefik.yml.example traefik/traefik.yml`
- Change domain name in traefik/traefik.yml with your domain
- up `docker-compose -f jenkins.prod.docker-compose.yml up -d`
- down `docker-compose -f jenkins.prod.docker-compose.yml down`

## Docker Registry

- up `docker-compose -f registry.docker-compose.yml up -d`
- down `docker-compose -f registry.docker-compose.yml down`
- Open in browser [Registry](http://localhost:1004/)

## Sonar (local)

- up `docker-compose -f sonar.docker-compose.yml up -d`
- down `docker-compose -f sonar.docker-compose.yml down`
- Open in browser [Sonar](http://localhost:1005/)

## Sonar (Prod)

- `git clone https://github.com/ckec/infra.git`
- `cd infra/`
- `cp traefik/sonar.traefik.yml.example traefik/traefik.yml`
- Change domain name in traefik/traefik.yml with your domain
- up `docker-compose -f sonar.prod.docker-compose.yml up -d`
- down `docker-compose -f sonar.prod.docker-compose.yml down`

## Images Docker Hub

### Node

- build image `docker build -f images/node.Dockerfile . -t ckechad/node:lts-stretch-slim`
- push image `docker push ckechad/node:lts-stretch-slim`

### Python

- build image `docker build -f images/python.Dockerfile . -t ckechad/python:3.9.4-slim`
- push image `docker push ckechad/python:3.9.4-slim`

