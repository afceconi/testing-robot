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
    robot -d /usr/src/testing-robot/Result -i E2ETest Americanas-Docker.robot

##### Method 2: run a full test step by step

    cd /usr/src/testing-robot/Tests
    robot -d /usr/src/testing-robot/Result -e E2ETest Americanas-Docker.robot

Full Installation
=================

In case of you want to run tests inside your prefered IDE without docker, you will need to install robot framework in your enviroment. For that follow these steps:

### Install Phyton

		Download on www.python.org./downloads/ and install (check option Add Phyton to environment variables)

### Run following commands: 

		python -m pip install --upgrade pip
		pip install robotframework-seleniumlibrary
		
### Download webdrivers:

		Go to https://github.com/mozilla/geckodriver/releases to download firefox webdriver
		Go to https://sites.google.com/a/chromium.org/chromedriver/ to download chrome webdriver
		
		Make sure webdrivers are avaiable at PATH

#### For more information

    Check https://code.google.com/archive/p/robotframework/wikis/Installation.wiki
	
### Run tests

##### Method 1: run a simple integrated test
  
    cd /usr/src/testing-robot/Tests
    robot -d /usr/src/testing-robot/Result -i E2ETest Americanas-Win.robot

##### Method 2: run a full test step by step

    cd /usr/src/testing-robot/Tests
    robot -d /usr/src/testing-robot/Result -e E2ETest Americanas-Win.robot
