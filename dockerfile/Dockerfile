# set basedockerfile 
FROM nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

# install default packages (python)
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y sudo apt-utils    

RUN apt-get install -y wget python-pip python-dev build-essential checkinstall && \
    apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev && \
    apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev liblzma-dev && \
    apt-get install -y git && \
    pip install --upgrade pip

RUN apt-get install -y python3 python3-pip python3-dev python3-setuptools
RUN pip3 install --upgrade pip
RUN apt-get install -y python3.7-dev python3.7-venv python3.7-tk
RUN apt-get install -y python3.8-dev python3.8-venv python3.8-tk

# Set user account
ARG USER_NAME
RUN echo ${USER_NAME}

RUN adduser --disabled-password --gecos '' ${USER_NAME} \
 && adduser ${USER_NAME} sudo \
 && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER ${USER_NAME}
ENV HOME /home/${USER_NAME}
WORKDIR /home/${USER_NAME}

CMD ["/bin/bash"]
