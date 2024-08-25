# Benchmark

All subject programs used in the experiment will be installed in docker images. Those images built here will be used in [experiment](../experiment).

## Instructions

### Download Archive
Download `subject_gits.tar.gz` from [here](https://drive.google.com/file/d/11I7m6zamJA5UlWmFlChP6eA76DGozBMb/view?usp=drive_link)  and locate here.
We should extract them in the same directory
```
tar zxvf subject_gits.tar.gz
```

### Generate Dockerfiles for Each Subject Program
```bash
./generate_dockerfile.sh

### output
# dockers
# |
# |-- Bears
# |   |-- Bears-121
# |   |-- ...
# |   `-- Bears-88
# |-- NPEX
# |   |-- ...
# .   |-- ...
# .    `-- ZooKeeper-ef3649f5
```

### Build Docker Images
The benchmarks for which experiment will be run are listed in `../benchmark_list.txt`. For light experiment, you can append `#` for each line to remove corresponding benchmark from experimental subjects.

```bash
python3 build_benchmark_parallel.py -j <thread_count> --benchmark-list ../benchmark_list.txt
```

Now all programs are built as below.
```bash
docker images --filter-reference="*/npetest-benchmark:*"

# REPOSITORY           TAG       ...
# npetest_benchmark   csv-9     ...
# ...
```

### Check the build results
All programs are using Maven build system. Running `build_results.sh` will show the result of each Maven command.
```bash
./build_results.sh

# ...
# -------
# 11. /tmp/build_logs/Bears/Bears-72/build_result.json
# {
#  "module_compile": 1,
#  "module_dependency_resolve": 1
# }
# -------
# 12. ...
```

