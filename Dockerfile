FROM centos:7
# allow installing of man pages
RUN sed -i "/tsflags=nodocs/d" /etc/yum.conf
# reinstall all packages with man pages
RUN yum reinstall -y \* 
# install additional packages
RUN yum install -y \
    iproute \
    tree \
    bash-completion \
    bash-completion-extras \
    locate \
    bc \
    mlocate \
    tcpdump \
    ethtool \
    wget \
    bind-utils \
    man-pages \
    man
# update locate and man databases
RUN /bin/updatedb && /bin/mandb
WORKDIR /root/playground