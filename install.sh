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

install_dependency_ruby()
{
  sudo apt-get update
  sudo apt-get install git-core curl zlib1g-dev build-essential \ 
    libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 \ 
    libxml2-dev libxslt1-dev libcurl4-openssl-dev \ 
    python-software-properties libffi-d -y
}

install_ruby()
{
  cd
  git clone git://github.com/sstephenson/rbenv.git .rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  exec $SHELL

  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  exec $SHELL

  git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

  rbenv install 2.2.3
  rbenv global 2.2.3
  ruby -v
  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  sudo gem install bundler
  say "done!"
}

install_node()
{
  sudo add-apt-repository ppa:chris-lea/node.js
  sudo apt-get install nodejs -y
}

install_nginx_passenger()
{
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \ 
    --recv-keys 561F9B9CAC40B2F7
  sudo apt-get install -y apt-transport-https ca-certificates
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \ 
    --recv-keys 561F9B9CAC40B2F7
  sudo apt-get install -y apt-transport-https ca-certificates

  # Add Passenger APT repository
  sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
  sudo apt-get update

  # Install Passenger & Nginx
  sudo apt-get install -y nginx-extras passenger

  # Start nginx
  sudo service nginx start
}

install_java()
{
  sudo apt-get install openjdk-8-jre
  sudo alternatives --config java
}

install_redis()
{
  sudo add-apt-repository ppa:chris-lea/redis-server
  sudo apt-get update
  sudo apt-get install redis-server -y
}

install_mysql()
{
  sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y
  sudo mysql_install_db
  sudo mysql_secure_installation
}

######################################################################
# install item handle and call it
######################################################################


install()
{
  case "$1" in
    dash) say "installinging rails + nginx + phusion passenger"
      install_dependency_ruby
      install_ruby
      install_node
      install_nginx_passenger
      ;;
    ruby) say "installing ruby"
      install_dependency_ruby
      install_ruby
      ;;
    node) say "installing node"
      install_node
      ;;
    nginx-passenger) say "installing nginx + phusion passenger"
      install_nginx_passenger
      ;;
    java) say "installing java 8"
      install_java
      ;;
    redis) say "installing redis"
      install_redis
      ;;
    mysql) say "installing mysql"
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
