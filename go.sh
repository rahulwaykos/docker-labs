yum install wget -y
cd /usr/local/

wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

source $HOME/.profile
