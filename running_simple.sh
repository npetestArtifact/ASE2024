#!/usr/bin/env bash

# BUILD DOCKER IMAGES FOR EACH TOOL
cd docker_images && ./build_tool_docker.sh

# BUILD DOCKER IMAGES FOR BENCHMARKS
# Remember to download subject_gits.tar.gz first and place it inside benchmarks directory
cd ../benchmarks

tar -xvf subject_gits.tar.gz

./generate_dockerfile.sh

python3 ./build_benchmark_parallel.py -j 2 --testing-type 1

# BUILD DOCKER IMAGES FOR TESTING
cd ../experiment
./generate_dockerfile.sh
python3 ./build_docker_parallel.py -j 2
