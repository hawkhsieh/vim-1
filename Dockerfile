FROM ubuntu:latest


# SCMs for "go get", gcc for cgo
RUN apt-get update && apt-get install -y \
		ca-certificates curl gcc libc6-dev make \
		bzr git mercurial \
		--no-install-recommends

ENV GOLANG_VERSION 1.3.3

RUN curl -sSL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz \
		| tar -v -C /usr/src -xz

RUN cd /usr/src/go/src && ./make.bash --no-clean 2>&1
ENV PATH /usr/src/go/bin:$PATH
ENV GOPATH /root/workspace
ENV GOROOT /usr/src/go                                                            
ENV PATH /root/go/bin:$PATH


RUN apt-get update && \
	apt-get -y install python vim git cmake python-dev build-essential\
	&& rm -rf /var/lib/apt/lists/*


#RUN vim +GoInstallBinaries +qall 2>/dev/null 1>/dev/null

                                                                                    
# Set environment variables.                                                        
ENV HOME /root
ENV TERM xterm-256color                                                             
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin                                              
ENV LC_CTYPE en_US.UTF-8                                                            
#:ENV LC_ALL en_US.UTF-8                                                              
# Define working directory.                                                         
WORKDIR /root
RUN mkdir -p /root/vim
ADD . /root/vim/
RUN mkdir cd /root/go;mkdir src pkg bin
#RUN bash /root/vim/setup.sh
#RUN vim +GoInstallBinaries +qall
# # Define default command.                                                           
# CMD ["bash"]                                                                        
