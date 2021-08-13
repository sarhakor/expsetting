# Setup docker environment for experiment

## Quick Start: Generate container for experiment

### Build base dockerfile
```bash
# ./build_docker.sh {docker image name}  # set your project name
./build_docker.sh demo_test
```

### Run docker images
```bash
# All use absolute paths
# ./run_docker.sh {expsetting path} {your dataset path} {your project path} {docker image name} {docker container name}
./run_docker.sh /home/${USER}/workspace/expsetting /media/${USER}/expdata/dataset /home/${USER}/workspace/project demo_test demo
```

## Install additional pakages 
Please install the package on the docker container.
### Anaconda3
```bash
cd ~/SETUP
./pakages/anaconda3.sh
```

### Pakages for video coding
cmake and parallel
``` bash
cd ~/SETUP
./pakages/videocoding.sh
```
