# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

source ~/dot/.git-completion.bash
source ~/dot/.git-prompt.sh

# vscode
alias cgit='code ~/git_work/'
alias cwork='code ~/work/'

# jupyter
alias jup='jupyter notebook'

# vagrant
function vgup()
{
  vagrant up $1
}

function vgha()
{
  vagrant halt $1
}

function vgup()
{
  vagrant reload $1
}

function vgup()
{
  vagrant destroy $1
}

# ssh
function ssh-aws()
{
  ssh -i $1 ec2-user@${2} -p 22
}

function sshx()
{
  csshx --login root $1
}

function sshl()
{
  ssh -l root $1
}

# ansible cmd
function anshell() 
{ 
  ansible -i /etc/ansible/hosts_product $1 -m shell -a "$2" ;
}

function anshell_l()
{ 
  ansible -i /etc/ansible/hosts_local $1 -m shell -a "$2" ;
}

#git command
alias gb='git branch'
alias gs='git status'
alias gadd='git add .'
alias glog='git log --oneline'
alias grlog='git reflog --date=local -n 10'

function gcom()
{
  git commit -m "$1"
}

function gp()
{
  git push origin $1
}
function gdiff()
{
  git diff $1 $2
}

function gdiffo()
{
  git diff -name--only $1 $2
}

function greb()
{
  git rebase -i HEAD~$1
}

alias grebca='git commit --amend'
alias grebcc='git rebase --continue'

# cmd
alias cdt='cd ~/git_work/nakano/work_tools/'
alias lss='ls -atrl'
alias la='ls -al'
alias ll='ls -al'
alias grep='grep --color'

#prompt
#export IP=`hostname -I | awk '{print $1}'`
#export HERE=`pwd`
#export PS1='\[\e[0;31m\]\u\[\e[0;37m\]@\[\e[0;33m\]\h\[\e[0;32m\]($IP)\[\e[1;37m\]:\[\e[0;37m\]\W]\$'
#export PS1='\[\e[0;31m\]\u\[\e[0;37m\]@\[\e[0;33m\]\h\[\e[0;32m\]($HERE)\[\e[1;37m\]:\[\e[0;37m\]\W]\$'
export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/root/perl5";
export PERL_MB_OPT="--install_base /root/perl5";
export PERL_MM_OPT="INSTALL_BASE=/root/perl5";
export PERL5LIB="/root/perl5/lib/perl5:$PERL5LIB";
export PATH="/root/perl5/bin:$PATH";
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWDIRTYSTATE=1
export TERM=xterm-256color
export PS1='\[\e[0;37m\][\u@\T]\[\e[0;35m\]\[\e[0;32m\][... $(__git_ps1) ...]\[\e[0;33m\][\w]\[\e[0:37m\]\n\$ '
