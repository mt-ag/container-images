FROM ubuntu:22.04

RUN apt-get update && apt-get install curl=7.81.0-1ubuntu1.15 -y --no-install-recommends \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh
RUN rm -r get_helm.sh
RUN curl -o openshift-cli-tar.gz https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.10.58/openshift-client-linux.tar.gz 
RUN tar -zxvf openshift-cli-tar.gz
RUN mv oc /usr/local/bin

RUN rm -r openshift-cli-tar.gz kubectl README.md
RUN apt-get remove curl -y --purge
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
