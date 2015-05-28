if ! rpm -qa | grep -qw ansible; then
    # enable EPEL repository
    curl -o /tmp/epel-release-6-8.noarch.rpm  http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo rpm -Uvh /tmp/epel-release-6-8.noarch.rpm
    sudo yum -y install ansible
fi

mkdir -m 777 /tmp/packer-provisioner-ansible-local
cd /tmp/packer-provisioner-ansible-local

sudo ansible-galaxy install -r /tmp/requirements.yml
ls -l /tmp
ls -l /tmp/packer-provisioner-ansible-local
