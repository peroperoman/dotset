#!/bin/bash

work_dir="/usr/local/src"
git_dir="~/git-work"
source ./.env

git config --global user.name "${GIT_USER_NAME}"
git config --global user.email "${GIT_USER_EMAIL_ADDR}"
git config --global http.sslVerify false

touch ~/.netrc
cat <<EOF > ~/.netrc
machine ${ORG_URL}
login ${GIT_USER_NAME}
password ${GIT_USER_TOKEN}
EOF

mkdir -p ${git_dir} && cd ${git_dir}
git clone https://github.com/peroperoman/dotset.git
cd ${git_dir}/dotset ;cp -rp $(pwd)/dot ${HOME}/
mv ${HOME}/.bashrc{,_$(date +%Y%m%d)}
mv ${HOME}/.vimrc{,_$(date +%Y%m%d)}
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -s ${HOME}{/dot/.vimrc,/.vimrc}
ln -s ${HOME}{/dot/.bashrc,/.bashrc}
source ~/.bashrc

yum -y remove git
yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker
cd ${work_dir}
GITVERSION="2.21.0" &&
wget https://www.kernel.org/pub/software/scm/git/git-$GITVERSION.tar.gz &&
tar -zxf git-$GITVERSION.tar.gz &&
cd git-$GITVERSION &&
unset GITVERSION &&
make prefix=/usr/local all &&
make prefix=/usr/local install &&
git --version

yum update -y
exit 0
