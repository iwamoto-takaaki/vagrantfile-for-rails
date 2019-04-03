if [ -f "/vagrant_provision" ]; then
	exit 0
fi

echo '### yun update ###'
yum -y update

echo '### install git ###'
yum install git -y

echo '### install devels ###'
yum install -y openssl-devel readline-devel zlib-devel sqlite-devel

echo '### install gem ###'
yum install rubygems -y
gem update --system

echo '### install gem ###'
yum install gcc-c++ make -y

echo '### install node ###'
curl -sL https://rpm.nodesource.com/setup_11.x | sudo bash
yum install -y nodejs

echo '###################################'
echo '### root provision #1 finished! ###'
echo '###################################'
touch /vagrant_provision
