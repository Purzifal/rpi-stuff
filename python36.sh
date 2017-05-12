sudo apt-get -y install libbz2-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev libssl-dev tk-dev build-essential libncursesw5-dev libc6-dev openssl
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar -zxvf Python-3.6.0.tgz
cd Python-3.6.0
./configure
make
sudo make install
