FROM centos:7
MAINTAINER wention xuyi.828@gmail.com

# build tools
RUN yum install -y gcc autoconf automake

# deps in docker
RUN yum install -y \
            make
            patch
# deps 
RUN yum install -y \
            libtool \
            gettext-devel \
            perl-XML-XPath \
            libxslt-devel \
            device-mapper-devel \
            libpciaccess-devel \
            libnl-devel

# xenapi driver deps
RUN yum install -y \
            libcurl

# edit tools

# apt clean up


CMD ["/usr/sbin/sshd"]
