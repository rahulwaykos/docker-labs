sh go.sh

cd docker_labs

docker run hello-world

# Load the IPVS kernel module.

modprobe xt_ipvs

# Ensure Docker daemon is running in swarm mode
docker swarm init

# Get the latest franela/dind image
docker pull franela/dind

go mod vendor

#Getting Docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose up
