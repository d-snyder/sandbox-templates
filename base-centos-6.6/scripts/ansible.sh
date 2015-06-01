if ! rpm -qa | grep -qw ansible; then
    # enable EPEL repository
    curl -o /tmp/epel-release-6-8.noarch.rpm  http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo rpm -Uvh /tmp/epel-release-6-8.noarch.rpm
    sudo yum -y install ansible
fi

mkdir -m 777 /tmp/packer-provisioner-ansible-local
mkdir -m 777 /tmp/packer-provisioner-ansible-local/roles
cd /tmp/packer-provisioner-ansible-local

ansible-galaxy install -r /tmp/requirements.yml
echo 'ls -l /tmp'
ls -l /tmp
echo 'ls -l /tmp/packer-provisioner-ansible-local'
ls -l /tmp/packer-provisioner-ansible-local
echo 'ls -l /tmp/packer-provisioner-ansible-local/roles'
ls -l /tmp/packer-provisioner-ansible-local/roles
