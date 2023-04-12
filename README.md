# Container Images

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/dd7d2f2dc4684f96b13914a14b5a73a2)](https://app.codacy.com/gh/mt-ag/container-images/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade)

This repository contains the build files for several container images that are used, developed and maintained by the MT.
The table gives you an overview of the contents of this repository.

|Image|Description|Dockerhub|
|---|---|---|
|[java-base-image](./java-base-image/README.md)|A java image that supports adding custom CA's at runtime and simplifies OpenTelemtry instrumentation|[![Docker Pulls](https://img.shields.io/docker/pulls/demtag/java-base-image)](https://hub.docker.com/r/demtag/java-base-image)|
|[kubectl](./kubectl/README.md)|Extended kubectl image to make easier deployments from CI/CD systems|[![Docker Pulls](https://img.shields.io/docker/pulls/demtag/kubectl)](https://hub.docker.com/r/demtag/kubectl)|
|[otel-java-agent](./otel-java-agent/README.md)|Simple container image holding the [OpenTelemtry Java Agent](https://github.com/open-telemetry/opentelemetry-java-instrumentation) that can be used for creating Kubernetes Sidecars|[![Docker Pulls](https://img.shields.io/docker/pulls/demtag/otel-javaagent)](https://hub.docker.com/r/demtag/otel-javaagent)|
