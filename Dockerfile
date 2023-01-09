FROM amazonlinux:2.0.20221103.3

RUN yum update -y && \
    yum install -y \
      man \
      which \
      make \
      less \
      && \
    yum clean all
