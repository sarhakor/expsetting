# install cmake and parallel
USER=$(whoami)

# install cmake dependency (openssl)
sudo apt update -y && sudo apt upgrade -y
sudo apt install build-essential
sudo apt install wget
wget http://www.openssl.org/source/openssl-1.1.1d.tar.gz
tar zxf openssl-1.1.1d.tar.gz
cd openssl-1.1.1d
./config
make
make test
sudo make install

# install cmake
cmakever=cmake-3.16.2
mkdir /home/${USER}/lib
cd /home/${USER}/lib
wget https://cmake.org/files/v3.16/${cmakever}.tar.gz
tar -xvzf ${cmakever}.tar.gz
cd ${cmakever}
./bootstrap --prefix=/usr/local
make && sudo make install
cmake --version

# install parappel
sudo apt-get update -y && sudo apt-get install -y parallel
parallel --version
