#/bin/sh
pushd .
if gem list | grep -q stomp; then
  echo "Stomp already installed, skipping."
else
  echo "Installing stomp using Ruby Gems globally."
  sudo gem install stomp
fi
mkdir -p ~/.mcollective-client/
cd ~/.mcollective-client/
curl -O http://downloads.puppetlabs.com/mcollective/mcollective-1.2.1.tgz
tar -xvzf mcollective-1.2.1.tgz
cd mcollective-1.2.1
if [ -f ~/.mcollective ] || [ -h ~/.mcollective ]
then
  echo "Caution: Already had existing ~/.mcollective, keeping this one!"
  echo "You can get the sample file from $PWD/etc/client.cfg.dist"
else
  cp etc/client.cfg.dist ~/.mcollective
fi
export PATH=$PATH:$PWD
export RUBYLIB=$RUBYLIB:$PWD/lib
echo "Please add the following to the bottom of your .bashrc/.zshrc"
echo "export PATH=\$PATH:$PWD"
echo "export RUBYLIB=\$RUBYLIB:$PWD/lib"
echo "and open ~/.mcollective and adjust the server settings and change:"
echo "libdir = $PWD/plugins/"
popd