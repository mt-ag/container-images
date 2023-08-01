FROM alpine:3.17.2

ARG AGENT_VERSION="1.28.0"

WORKDIR /app
COPY checksum-${AGENT_VERSION}.txt /app/
RUN wget -O opentelemetry-javaagent.jar https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v${AGENT_VERSION}/opentelemetry-javaagent.jar && \
    sha256sum /app/opentelemetry-javaagent.jar && \
    echo "$(cat /app/checksum-${AGENT_VERSION}.txt)  /app/opentelemetry-javaagent.jar" | sha256sum -wc && \
    rm /app/checksum-${AGENT_VERSION}.txt