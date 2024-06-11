# NPETest
This repository contains the source codes for NPETest and other resources inclulding experimental data 
to support the paper "Effective Unit Test Generation for Java Null Pointer Exceptions".

## Benchmarks
The directory [benchmarks](./benchmarks) contains all benchmarks.
We conducted all experiments in docker system, and we provide the Dockerfile for each benchmark.
* [dockers](./benchmarks/dockers) : contains Dockerfile files for each benchmark
* [metadata](./benchmarks/metadata) : contains the known npe information of each benchmark
* [subject_gits](./benchmarks/subject_gits.tar.gz): contains the buggy version of each benchmark.
You can download subject_gits.tar.gz file from the following link
  
## Raw Data for tables in the paper.
[rq1_result](./rq1_result.xlsx) : contains the result tables for rq1
[rq2_result](./rq2_result) : contains the result tables for rq2

For the raw data, we provide additional google drive links for downloading all datas. 
(The data contains all test cases generated by the tools used in our evaluation; hence the size of the data is too large to upload on github.)

* [Randoop_npex](https://drive.google.com/file/d/1mevPl4U9vwRtl0b7bdCu6EpgaMXamx6s/view?usp=sharing): Google drive link for downloading Randoop results for NPEX benchmarks, containing the generated test-cases.
* [Randoop_other](https://drive.google.com/file/d/1i7M7gS0gvp2H9z5BX1ntPx3OQf8PnFcf/view?usp=sharing): Google drive link for downloading Randoop results for Bears, BugSwarm, Defects4J, Genesis benchmarks, containing the generated test-cases.

For Randoop, we only upload the log files for each benchmark listed in tables since including all test cases generated by Randoop is too large (more than 50GB). 


## Source code
We updated a directory [tool](./tool) which contains all source codes for NPETest.
Because we built NPETest on EvoSuite, a directory [tool](./tool) contains EvoSuite with NPETest options.
