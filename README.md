# golang
This repository contains Dockerfile of golang environment in ubuntu

## Getting Started
These instructions will get you to build golang in your docker. See Installation for notes on how to build your golang on a live services.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download the sources from public [Docker Hub](https://hub.docker.com/r/bananabb/golang) or run Usage tag provided.
3. Execute docker container by cmd, you will move in `$HOME/go` which is this container work directory.
4. You should create a new folder for your project.
5. Move your locate to new folder.
6. After that main.go file should build it in here.

### Usage
```
docker pull bananabb/golang:latest
docker run -itd --name golang -p 8080:80 bananabb/golang
docker exec -it golang /bin/bash
go version
mkdir $HOME/go/{folder}
cd $HOME/go/{folder}
```
Now you can enjoy your coding in your container.

## License
MIT © [BananaBb](https://github.com/BananaBb)