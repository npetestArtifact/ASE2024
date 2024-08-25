# Tools

All tools (NPETest, EvoSuite, and Randoop) used in the experiment will be installed in docker images. Those images built here will be used in [experiment](../experiment).

## Instructions

### Build Docker Images

```bash
python3 build_benchmark_parallel.py -j <thread_count> --benchmark-list ../benchmark_list.txt
```

Now all tools are built as below.
```bash
docker images --filter-reference="*/npetest-benchmark:*"

# REPOSITORY           TAG       ...
# npetest_benchmark   csv-9     ...
# ...
```
