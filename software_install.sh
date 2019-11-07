#!/bin/bash

# update
sudo apt update 

# upgrade
sudo apt full-upgrade -y

# tools
sudo apt install -y tmux htop vim ranger wget git unzip curl cmake python-dev python3-dev

# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm -rf get-docker.sh

# JDK
sudo apt install -y openjdk-8-jdk
sudo apt install -y openjdk-11-jdk

# Gradle
wget https://services.gradle.org/distributions/gradle-5.6.4-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
sudo touch /etc/profile.d/gradle.sh
echo "export GRADLE_HOME=/opt/gradle/gradle-5.6.4" | sudo tee -a /etc/profile.d/gradle.sh
echo "export PATH=\${GRADLE_HOME}/bin:\${PATH}" | sudo tee -a /etc/profile.d/gradle.sh
sudo chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh

# nvm , nodejs and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node # "node" is an alias for the latest version

# pip and pipenv
sudo apt install -y python3-pip
pip3 install pipenv

# Test
sudo docker version
java -version
gradle -v
nvm --version
npm --version
pip3 --version
