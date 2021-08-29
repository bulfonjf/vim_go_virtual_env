# Vim Go Virtual Env

Create a new virtual environment ready to go

No more need to install Golang on your computer, use docker instead with this development environment. 

## What's in this ?

* Alpine as Operating System
* Docker in docker
* Golang (latest version)
* Fish shell and Oh-My-Fish
* Git
* Fully configured Vim for Golang

## Docker image
![docker_image](https://hub.docker.com/repository/docker/juanbulfon/vimgo)

## How to use it ?

Get the docker-compose.yml :

```
curl -fLo docker-compose.yml https://raw.githubusercontent.com/bulfonjf/vim_go_virtual_env/main/docker-compose.yml
```

Up all that stuff :

```
docker-compose up -d
```

Then run the environment :

```
docker-compose run go
```

## Overview

Go binaries are installed in

- /usr/loca/go/bin

To develop apps do:
- cd /go/src
- go mod init <app name>
- vim <file name>.go

To run the app
- Save the file (:w)
- :GoRun

To debug the app
- :GoDebugBreakpoint (add or remove a breakpoint)
- :GoDebugStart
- :GoDebugNext | :GoDebugContinue

Documentation
- ![here](https://github.com/fatih/vim-go)
