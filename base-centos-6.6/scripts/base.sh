sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
yum -y install git gcc make gcc-c++ kernel-devel-`uname -r` perl
