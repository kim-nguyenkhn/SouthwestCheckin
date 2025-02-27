# SW Checkin

[![Build Status](https://travis-ci.org/pyro2927/SouthwestCheckin.svg?branch=master)](https://travis-ci.org/pyro2927/SouthwestCheckin)
[![Maintainability](https://api.codeclimate.com/v1/badges/aa1c955dfcba58a7352f/maintainability)](https://codeclimate.com/github/pyro2927/SouthwestCheckin/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/aa1c955dfcba58a7352f/test_coverage)](https://codeclimate.com/github/pyro2927/SouthwestCheckin/test_coverage)
[![Docker Build Status](https://img.shields.io/docker/automated/pyro2927/southwestcheckin.svg?style=flat)](https://hub.docker.com/r/pyro2927/southwestcheckin)
[![Docker Image Size](https://images.microbadger.com/badges/image/pyro2927/southwestcheckin.svg)](https://microbadger.com/images/pyro2927/southwestcheckin)

![](http://www.southwest-heart.com/img/heart/heart_1.jpg)

This python script checks your flight reservation with Southwest and then checks you in at exactly 24 hours before your flight.  Queue up the script and it will `sleep` until the earliest possible check-in time.

## Contributors

[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/0)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/0)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/1)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/1)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/2)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/2)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/3)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/3)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/4)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/4)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/5)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/5)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/6)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/6)[![](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/images/7)](https://sourcerer.io/fame/pyro2927/pyro2927/SouthwestCheckin/links/7)


## Requirements

This script can either be ran directly on your host or within Docker.

### Host

* Python (should work with 2.x or 3.x thanks to @ratabora)
* [pip](https://pypi.python.org/pypi/pip)

### Docker

* Docker (tested with 1.12.6)

## Setup

### Host

#### Install Base Package Requirements

```bash
$ pip install -r requirements.txt
```

#### Usage

```bash
$ python ./checkin.py CONFIRMATION_NUMBER FIRST_NAME LAST_NAME
```

### Docker

#### Usage (Kim's Notes

```bash
# SSH into 
ssh -i /path/my-key-pair.pem my-instance-user-name@my-instance-public-dns-name

# Become root
sudo su -

# Runs in detached mode
docker run -it kim-nguyenkhn/southwestcheckin:latest CONFIRMATION_NUMBER FIRST_NAME LAST_NAME

# List all docker instances
docker ps -a

# Tail logs
docker logs --tail 100 DOCKER_CONTAINER_ID

# Clean all exited containers
docker ps -qaf status=exited | xargs docker rm

# Remove all unused images
docker images -f dangling=true -q | xargs docker rmi
```

### Changing the Timezone
```shell
# List the machine's time zones
timedatectl

# Set timezone
timedatectl set-timezone America/Los_Angeles
```

### Kim's Notes

From the AWS docs: [Link](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)

```shell
ssh -i /path/my-key-pair.pem my-instance-user-name@my-instance-public-dns-name

# Become root
sudo su -
# Become docker
su docker

# Enter python3
python3

# Build the docker image
make docker

# Release the docker image
make release
```
