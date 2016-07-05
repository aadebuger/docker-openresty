from ubuntu
run apt-get -y update
run apt-get -y install git
run apt-get -y install wget
run apt-get -y install libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make build-essential
run apt-get -y  install tofrodos 
run apt-get -y install mercurial 
run ln -s /usr/bin/todos /usr/bin/unix2dos 
run ln -s /usr/bin/fromdos /usr/bin/dos2unix 
run mkdir /github
workdir /github
run git clone https://github.com/openresty/openresty
workdir  /github/openresty 
run make
workdir  /github/openresty/openresty-1.9.15.2rc0 

run  cd /github/openresty/openresty-* && ./configure
run make
run make install
