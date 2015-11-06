#!/usr/bin/env bash

######################################################################
# Utility variable and function
######################################################################

GREEN='\033[0;32m'
NC='\033[0m' # No color

say()
{
  # echo in green color and go back to no color"
  echo -e "${GREEN}$1${NC}"
}

######################################################################
# Indivisual install task
######################################################################
install_git()
{
  echo
}

set_git_global_config()
{
  say "done!"
}

install_ruby()
{
  wget https://cache.ruby-lang.org/pub/ruby/2.2/ruby-2.2.3.tar.gz
  tar -xzf ruby-2.2.3.tar.gz
  cd ruby-2.2.3/
  ./configure
  make
  sudo make install
  ruby -v
  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  gem install bundler
  gem install rails
  say "done!"
}

install_java()
{
  sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fdownload.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jre-8u60-linux-x64.tar.gz"
  sudo tar xvf jre-8u60-linux-x64.tar.gz
  sudo chown -R root: jre1.8.0_60
  sudo alternatives --install /usr/bin/java java /opt/jre1.8.0_60/bin/java 1
  sudo alternatives --config java
}

install_redis()
{
  echo
}

install_mysql()
{
  echo
}

######################################################################
# install item handle and call it
######################################################################


install()
{
  case "$1" in
    dash) say "installinging rails + nginx + phusion passenger"
      install_git
      ;;
    git) say "installing git"
      install_git
      set_git_global_config
      ;;
    ruby) say "installing ruby"
      install_ruby
      ;;
    java) echo "installing java 8"
      install_java
      ;;
    redis) echo "installing redis"
      install_redis
      ;;
    mysql) echo "installing mysql"
      install_mysql
      ;;
    *) echo "I do not know how to install $1"
      ;;
  esac
}

for var in "$@"
do
  install "$var"
done
