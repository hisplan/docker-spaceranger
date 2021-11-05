FROM centos:7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

ARG SPACERANGER_VERSION
ARG DOWNLOAD_URL
ENV PATH /opt/spaceranger-${SPACERANGER_VERSION}:$PATH

RUN yum group install -y "Development Tools" \
    && yum install -y which

# space ranger binaries
RUN curl -o spaceranger-${SPACERANGER_VERSION}.tar.gz ${DOWNLOAD_URL} \
    && tar xzf spaceranger-${SPACERANGER_VERSION}.tar.gz \
    && rm -rf spaceranger-${SPACERANGER_VERSION}.tar.gz \
    && mv spaceranger-${SPACERANGER_VERSION} /opt/

WORKDIR /opt

ENTRYPOINT [ "spaceranger" ]
