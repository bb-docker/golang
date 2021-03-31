FROM bananabb/ubuntu:20.10
MAINTAINER BananaBb

# Install Go
RUN sudo apt-get update -y \
 && mkdir -p $HOME/go \
 && curl -O https://dl.google.com/go/go1.16.2.linux-amd64.tar.gz \
 && rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz \
 && rm go1.16.2.linux-amd64.tar.gz

# Set ENV
ENV GOROOT /usr/local/go
ENV GOPATH $HOME/go
ENV PATH $PATH:/usr/local/go/bin

WORKDIR $HOME/go
EXPOSE 80 443
CMD ["/bin/bash"]