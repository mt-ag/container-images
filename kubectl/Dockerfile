ARG KUBECTL_VERSION="1.26"

FROM bitnami/kubectl:${KUBECTL_VERSION}

USER root

RUN apt-get update \
    && apt-get install -y gettext-base \
    && rm -rf /var/lib/apt/lists/*

USER 1001