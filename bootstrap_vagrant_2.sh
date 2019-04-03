if [ -f "./vagrant_provision2" ]; then
	exit 0
fi

echo '### install ruby ###'
rbenv install -v 2.6.2
rbenv global 2.6.2

echo '### install rails ###'
gem install rails

echo '### create site ###'
cd /srv
rails new website

echo '######################################'
echo '### vagrant provision #2 finished! ###'
echo '######################################'
touch ./vagrant_provision2
