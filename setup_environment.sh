sudo apt-get update
sudo apt-get install docker.io -y
sudo apt-get install openvswitch-switch -y
wget https://raw.githubusercontent.com/openvswitch/ovs/master/utilities/ovs-docker
chmod a+rwx ovs-docker
mv ovs-docker /usr/bin
git clone https://github.com/jpetazzo/pipework.git
mv ./pipework/pipework /usr/bin
sudo docker build -t lab - < Dockerfile
