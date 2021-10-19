FROM centos:7

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

ENV SPACERANGER_VERSION 1.3.0
ARG DOWNLOAD_URL
ENV PATH /opt/spaceranger-${SPACERANGER_VERSION}:$PATH

RUN yum group install -y "Development Tools" \
    && yum install -y which

# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/1.3/
# space ranger binaries
RUN curl -o spaceranger-${SPACERANGER_VERSION}.tar.gz ${DOWNLOAD_URL} \
    && tar xzf spaceranger-${SPACERANGER_VERSION}.tar.gz \
    && rm -rf spaceranger-${SPACERANGER_VERSION}.tar.gz \
    && mv spaceranger-${SPACERANGER_VERSION} /opt/

WORKDIR /opt

ENTRYPOINT [ "spaceranger" ]
