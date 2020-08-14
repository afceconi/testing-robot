# testing-robot
First project to testing an application Americanas.com with robot framework

Quick Start
===========

### Clone this repository
  
    git clone https://github.com/afceconi/testing-robot.git

### Build image from Dockerfile.

    cd <PROJECT-PATH>
    docker build -t robot-docker .

### Run docker with shared volume.

    docker run -ti -v <PROJECT-PATH>:/usr/src/testing-robot robot-docker bash

### Run tests

##### Method 1: run a simple integrated test
  
    cd /usr/src/testing-robot/Tests
    robot -d /usr/src/testing-robot/Result -i E2ETest Americanas.robot

##### Method 2: run a full test step by step

    cd /usr/src/testing-robot/Tests
    robot -d /usr/src/testing-robot/Result -e E2ETest Americanas.robot

Full Installation
=================

In case of you want to run tests inside your prefered IDE without docker, you will need to install robot framework in your enviroment. For that follow these steps:
