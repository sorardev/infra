# Infra

## Start containers

`docker-compose up -d --remove-orphans`

## Nexus

- username: admin
- password: ` docker-compose exec nexus cat /nexus-data/admin.password`

## Jenkins

- Unlock Jenkins with this command `docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

## Sonar

- username: admin
- password: admin

## Stop/Down containers

- `docker-compose stop `
- `docker-compose down `

## Ansible (Server installation) Without Docker [In progress]

- Rename `hosts.example` to `hosts`
- Replace `0.0.0.0` with servers ip
- Check file variables ```roles/vars.yml```
- Playbook is in ```roles/servers.yml```
- ```cd ansible```
- Run this command
  ```ansible-playbook -i hosts roles/servers.yml --ssh-common-args='-o StrictHostKeyChecking=no'```
  OR
  ``` sh install_server.sh```
  
## Ansible (Server installation) With Docker [In progress] {Centos/Ubuntu/Debian}

- Install python3 in Centos Servers
  ```yum install -y python3```

- Build image
  ```docker build -f ansible.Dockerfile -t ansible:latest .```
- Run ansible with volume container
  ```docker run -it --rm -v "$(pwd)/ansible":/ansible -v $HOME/.ssh/:/root/.ssh/ -w /ansible ansible bash```
- Install roles(Init and Docker) in your Servers
  ```sh install_server.sh```
