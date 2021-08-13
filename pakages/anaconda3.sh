USER=$(whoami)

cd /home/${USER}

wget https://repo.anaconda.com/archive/Anaconda3-2021.05-Linux-x86_64.sh
sh Anaconda3-2021.05-Linux-x86_64.sh -b
rm Anaconda3-2021.05-Linux-x86_64.sh

export PATH=/home/${USER}/anaconda3/bin:${PATH}

conda update conda
conda update anaconda
conda update --all

conda infro --env
