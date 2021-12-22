#!/bin/bash
# Install scripts for docker nginx container
# Reference: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04

# Update the packages
sudo yum update -y

# Adds the GPG key for the official Docker repository to the system
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to APT sources
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Making sure installing Docker from Repo instead of default Ubuntu 16.04 repo
#apt-cache policy docker-ce

# Install Docker Community Edition
sudo yum install -y docker

sudo systemctl enable --now docker

# Pull the lastest Nginx image
#docker pull nginx:1.18.0

# Run the nginx container on port 80
#docker run -d -p 80:80 --name companynamenginx nginx


mkdir jenkins_home && chmod -R 777 jenkins_home
#touch index.html

#sudo docker volume create nginx-data

#ln -s /var/lib/docker/volumes/nginx-data/_data/nginx

#sudo usermod -aG docker ubuntu

#cd /var/lib/docker/volumes/nginx-data/_data

#ed index.html <<'EOF'
#i
#<!DOCTYPE html>
#<html>
#<head>
#<title>hongfu scbdemo nginx!</title>
#<style>
#html { color-scheme: light dark; }
#body { width: 35em; margin: 0 auto;
#font-family: Tahoma, Verdana, Arial, sans-serif; }
#</style>
#</head>
#<body>
#<h1> hongfu scbdemo nginx!</h1>
#<p>If you see this page, the nginx web server is successfully installed and
#working. Further configuration is required.</p>
#
#<p>For online documentation and support please refer to
#<a href="http://nginx.org/">nginx.org</a>.<br/>
#Commercial support is available at
#<a href="http://nginx.com/">nginx.com</a>.</p>

#<p><em>Thank you for using nginx.</em></p>
#</body>
#</html>
#.
#w index.html
#q
#EOF

sudo docker run -d -p 8080:8080 -p 50000:50000 -v $PWD/jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts-jdk11

#docker run --name companynamenginx --mount type=bind,source=/home/ubuntu/www,target=/usr/share/nginx/html -p 80:80 -d nginx:1.18.0

#docker run -d --name companynamenginx -p 80:80 -v nginx-data:/usr/share/nginx/html nginx

#docker run -d -p 80:80 -v ~/www:/usr/share/nginx/html/ --name companynamenginx  nginx

#sudo docker exec -it companynamenginx bash <<EOF
#sed -i "s/Welcome to nginx!/hongfu nginx!/g" /usr/share/nginx/html/index.html
#EOF

#cd /usr/share/nginx/html/
#cat index.html
#sed -i 's/Welcome to nginx!/hongfu nginx!/g' /usr/share/nginx/html/index.html

