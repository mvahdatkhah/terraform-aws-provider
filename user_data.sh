#!/bin/bash
# Install using the rpm repository
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

## Linux post-installation steps for Docker Engine
# Add your user to the docker group
sudo usermod -aG docker $USER

sudo systemctl restart docker.service
# Configure Docker to start on boot with systemd
sudo systemctl enable --now docker.service
sudo systemctl enable --now containerd.service

# Run Nginx container
sudo docker run --name web -d -p 8080:80 nginx
