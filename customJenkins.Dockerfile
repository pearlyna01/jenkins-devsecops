# Docker file for custom jenkins image with blueocean
FROM jenkins/jenkins:2.392-jdk11

USER root

# update linux
RUN apt-get update && apt-get install -y lsb-release

USER jenkins

# install blueocean plugin
RUN jenkins-plugin-cli --plugins "blueocean:1.27.0 docker-workflow:563.vd5d2e5c4007f"
