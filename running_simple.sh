#!/usr/bin/env bash

# BUILD DOCKER IMAGES FOR EACH TOOL
cd docker_images && ./build_tool_docker.sh

# BUILD DOCKER IMAGES FOR BENCHMARKS
# Remember to download subject_gits.tar.gz first and place it inside benchmarks directory
cd ../benchmarks
cp simple_benchmark.txt benchmark_list.txt

tar -xvf subject_gits.tar.gz

./generate_dockerfile.sh

python3 ./build_behcmakr_parallel.py
