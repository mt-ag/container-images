ARG KUBECTL_VERSION="1.25"

FROM bitnami/kubectl:${KUBECTL_VERSION}

USER root

RUN apt-get update \
    && apt-get install -y gettext-base \
    && rm -rf /var/lib/apt/lists/*

USER 1001