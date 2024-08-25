## Operating System
We recommend using **Ubuntu 20.04** or **Ubuntu 22.04**. 

## Software
* We assume [Docker](https://docs.docker.com/engine/install/ubuntu/) is installed in your hardware. All experimental results will be reproduced in a dockerized environment.
* The following command installs the prerequisites for our artifact.
  ```
    sudo apt-get install python3 python3-dev python3-pip maven openjdk-11-jre-headless openjdk-11-jdk-headless docker
    python3 -m pip install pandas
    python3 -m pip install matplotlib-venn
  ```
