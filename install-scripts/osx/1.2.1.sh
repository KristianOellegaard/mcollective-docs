#/bin/sh
pushd .
mkdir -p ~/.mcollective-client/1.2.1/
cd ~/.mcollective-client/1.2.1/
curl -O http://downloads.puppetlabs.com/mcollective/mcollective-1.2.1.tgz
tar -xvzf mcollective-1.2.1.tgz
cd mcollective-1.2.1
cp etc/client.cfg.dist ~/.mcollective
export PATH=$PATH:$PWD
export RUBYLIB=$RUBYLIB:$PWD/lib
echo "Please add the following to the bottom of your .bashrc/.zshrc"
echo "export PATH=\$PATH:$PWD"
echo "export RUBYLIB=\$RUBYLIB:$PWD/lib"
echo "and open ~/.mcollective and adjust the server settings and"
echo "change libdir to $PWD/lib"
popd