# Setup
To run experiments in a dockerized environment, build a docker image via the following command.
```
docker build -t smartfix --build-arg CORE=40 .
```
* The above command will use 40 cores in parallel when installing Z3 SMT solver. You can replace the above argument ``40`` depending on your hardware specifications.
* *Expected running time with 40 cores: 12 minutes*

