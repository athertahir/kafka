# Installs Kafka under the $HOME folder
# Location of binaries => $HOME/kafka/bin

# Version Update
apt-get --allow-releaseinfo-change update

# Update
apt-get update

# Upgrade
apt-get upgrade

apt-get install telnet

# Install JRE
 apt-get --assume-yes install default-jre

# Install Zookeepr
 apt-get --assume-yes install zookeeperd
# Stop zookeeper and prevent it from auto starting
 service zookeeper stop
 systemctl remove zookeeper

# Create a temp directory
mkdir $HOME/kafka
cd $HOME/kafka
#wget http://apache.claz.org/kafka/1.1.0/kafka_2.12-1.1.0.tgz -O kafka.tgz
# wget http://www-us.apache.org/dist/kafka/1.1.0/kafka_2.12-1.1.0.tgz
# Updated v1.3-3
#wget http://www-us.apache.org/dist/kafka/1.1.1/kafka_2.12-1.1.1.tgz
#wget http://www-us.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz

wget https://downloads.apache.org/kafka/2.5.0/kafka_2.13-2.5.0.tgz

ls
mv *.tgz  kafka.tgz

# Untar & delete tar file
tar -xvzf ./kafka.tgz --strip 1
rm kafka.tgz
