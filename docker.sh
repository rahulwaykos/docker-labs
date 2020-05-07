yum install -y yum-utils

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum-config-manager --enable docker-ce-nightly

yum-config-manager --enable docker-ce-test

yum install docker-ce docker-ce-cli containerd.io -y

systemctl daemon-reload
systemctl enable docker --now
