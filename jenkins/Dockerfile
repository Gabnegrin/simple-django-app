FROM jenkins/jenkins:lts-jdk17


ENV JENKINS_USER=admin
ENV JENKINS_PASS=admin
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false

EXPOSE 8080

ADD plugins.txt .
RUN jenkins-plugin-cli -f plugins.txt
ADD ssh-config .
USER root

RUN apt-get update && \
    apt-get install -y docker.io && \
    curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
ADD start.sh .
RUN mkdir /deploy
RUN chown jenkins:jenkins /deploy

USER jenkins
ENTRYPOINT [ "/start.sh" ]