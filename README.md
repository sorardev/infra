# Infra

## Start containers

`docker-compose up -d --remove-orphans`

## Nexus

- username: admin
- password: ` docker-compose exec nexus cat /nexus-data/admin.password`

## Jenkins

Step to install Jenkins

- Unlock Jenkins with this command `docker-compose exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword`
  ![Unlock jenkins](assets/unlock_jenkins.png)
- Install plugins
  ![Install plugins jenkins](assets/install_plugins.png)
  ![Plugins installation](assets/plugins_installation.png)
- Save first admin
  ![First admin](assets/first_admin.png)
- Set url  
  ![Jenkins url](assets/jenkins_url.png)

## Sonar

- username: admin
- password: admin

## Stop/Down containers

- `docker-compose stop `
- `docker-compose down `
