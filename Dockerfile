FROM centos:7
# allow installing of man pages
RUN sed -i "/tsflags=nodocs/d" /etc/yum.conf
# reinstall all packages with man pages
RUN yum reinstall -y \* 
# install additional packages
RUN yum install -y \
    bash-completion \
    bash-completion-extras \
    bc \
    bind-utils \
    ethtool \
    ftp \
    locate \
    man \
    man-pages \
    mlocate \
    openssh-clients \
    openssh-server \
    scp \
    tcpdump \
    tree \
    wget \
    which \
    iproute

# update locate and man databases
RUN /bin/updatedb \
    && /bin/mandb \
    && ssh-keygen -A \
    && echo root | passwd --stdin root

COPY init.sh /root/init.sh
RUN chmod u+x /root/init.sh
WORKDIR /root/playground
CMD /root/init.sh