# Setup docker environment for experiment

## Quick Start: Generate container for experiment

### Build base dockerfile
```bash
./build_docker.sh {docker image name}	# set your project name
```

### Run docker images
```bash
# All use absolute paths
./run_docker.sh {your dataset path} {your project path} {docker image name} {docker container name}
```

## Install additional pakages 
Please install the package on the docker container.
### Anaconda3
```bash
./pakages/anaconda3.sh
```

### Pakages for video coding
cmake and parallel
``` bash
./pakages/videocoding.sh
```
