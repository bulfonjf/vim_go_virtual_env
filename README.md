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

## How to use it ?

Get the docker-compose.yml :

```
curl -fLo docker-compose.yml https://raw.githubusercontent.com/dimensi0n/goindock/main/docker-compose.yml
```

Up all that stuff :

```
docker-compose up -d
```

Then run the environment :

```
docker-compose run go
```
