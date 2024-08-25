# Tools

All tools (NPETest, EvoSuite, and Randoop) used in the experiment will be installed in docker images. Those images built here will be used in [experiment](../experiment).

*[NPETest](./npetest) : contains Dockerfile to generate docker image of NPETest
*[EvoSuite](./evosuite) : contains Dockerfile to generate docker image of EvoSuite
*[Randoop](./randoop) : contains Dockerfile to generate docker image of Randoop
*[testing_tools](./testing_tools) : contains Dockerfile which contains exectuable files of all tools.





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
