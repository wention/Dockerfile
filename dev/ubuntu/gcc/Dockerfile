FROM ubuntu:14.04.3
MAINTAINER wention xuyi.828@gmail.com

ENV MIRROR mirrors.163.com
ENV ENABLE_SSHD 0

# change the default mirrors
RUN sed -i 's/archive.ubuntu.com/mirrors.163.com/' /etc/apt/sources.list

# update mirrors
RUN apt-get update

# ssh server
RUN apt-get update && apt-get install -y openssh-server \
    && mkdir /var/run/sshd  \
    && echo 'root:wention' | chpasswd  \
    && sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config  \
    && sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# build tools
RUN apt-get install -y gcc automake build-essential

# edit tools
RUN apt-get install -y vim ctags vim-scripts

# dev packages

# apt clean up
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/


EXPOSE 22
CMD ["/usr/sbin/sshd"]
