if [ -f "./vagrant_provision1" ]; then
	exit 0
fi

echo '### install rbenv ###'
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv 
src/configure 
make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/shims:$PATH"' >> ~/.bash_profile
~/.rbenv/bin/rbenv init

echo '### install ruby-build ###'
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo '######################################'
echo '### vagrant provision #1 finished! ###'
echo '######################################'
touch ./vagrant_provision1
