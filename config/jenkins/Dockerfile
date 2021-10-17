FROM jenkins/jenkins:2.303.2-jdk11
#USER root
#RUN apt-get update && \
#apt-get -y install apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg2 \
#    software-properties-common && \
#curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
#RUN apt-key fingerprint 0EBFCD88
#RUN add-apt-repository \
#       "deb [arch=amd64] https://download.docker.com/linux/debian \
#       $(lsb_release -cs) stable"
#RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io
#RUN curl -L \
#  "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" \
#  -o /usr/local/bin/docker-compose \
#  && chmod +x /usr/local/bin/docker-compose \
#  ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.0 docker-workflow:1.26"

