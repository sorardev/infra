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

## Ansible (Server installation)
- Rename `hosts.example` to `hosts`
- Replace `0.0.0.0` with servers ip
- Check file variables ```roles/vars.yml``` 
- Playbook is in ```roles/servers.yml```
- Run this command
```ansible-playbook -i hosts roles/servers.yml --ssh-common-args='-o StrictHostKeyChecking=no'```
OR
``` sh install_server.sh```

### Roles  (Ubuntu/Debian)
- Init playbook 
- Docker playbook

### Roles  (Redhat/Centos)
-