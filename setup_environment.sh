sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openvswitch-switch -y
sudo docker build -t lab - < Dockerfile
