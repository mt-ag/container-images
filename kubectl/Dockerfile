ARG KUBECTL_VERSION="1.26"

FROM bitnami/kubectl:${KUBECTL_VERSION}

USER root

RUN apt-get update \
    && apt-get --no-install-recommends install -y gettext-base=0.21-4 \
    && rm -rf /var/lib/apt/lists/*

USER 1001