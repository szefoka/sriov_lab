sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openvswitch-switch -y
sudo apt-get install git -y
git clone https://github.com/jpetazzo/pipework.git
mv ./pipework/pipework /usr/bin
sudo docker build -t lab - < Dockerfile
