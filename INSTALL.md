# Setup

## Using VM(VirtualMachine) 
We provide a VM image file which contain all contents to evaluate the experiments.
The VM image is built on [VirtualBox 7.0.20](https://www.virtualbox.org).
This VM is set to use 16GB memories and 4 CPU cores with 1 TB disk.
You may change the settings for memories and CPU cores. 
The user name is "npetest" and the user password is set to "1234".
You can donwload the VM image from the following link.

[NPETest VM](https://doi.org/10.5281/zenodo.13371823).

* Loading our VM image on VirtualBox with older version ( < 7.0.20) may raise an error.

## Using Source Code (Using NPETest for other purposes)

NPETest is built on [EvoSuite](https://github.com/evosuite/evosuite).
If you want to use NPETest solely, please follow the installation instructions of EvoSuite to install NPETest. 
The source code for NPETest is in a [tool](./tool) directory. 


## Using NPETest on our experimental environment.

If you want to perform a small experiment provided by us, you can skip this process.
Otherwise, please follow the instructions below.




To run experiments in a dockerized environment, build a docker image via the following command.
```
docker build -t smartfix --build-arg CORE=40 .
```
* The above command will use 40 cores in parallel when installing Z3 SMT solver. You can replace the above argument ``40`` depending on your hardware specifications.
* *Expected running time with 40 cores: 12 minutes*


