# Opentelemtry Java Agent

This repository contains the Dockerfiles to build a containerized version of the [Open Telemetry Java Agent](https://github.com/open-telemetry/opentelemetry-java-instrumentation).
The image is intended to be used as a Kubernetes init container to instrument a java application without changing the actual java image.
Builds are provided on [Dockerhub](https://hub.docker.com/r/demtag/otel-javaagent).

## Example Usage

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: example
  labels:
    app: example
spec:
  replicas: 1
  selector:
    matchLabels:
      app: example
  template:
    metadata:
      labels:
        app: example
    spec:
      containers:
      - name: application
        image: my-application
        args:
          - "-javaagent:/mnt/otel/opentelemetry-javaagent.jar"
          - "-jar"
          - "path-to-my.jar"
        ports:
        - name: application
          containerPort: 8080
        volumeMounts:        
        - name: otel
          mountPath: /mnt/otel
      initContainers:      
      - name: otel
        command: ["sh", "-c", "cp /app/opentelemetry-javaagent.jar /mnt/otel/opentelemetry-javaagent.jar"]
        image: "demtag/otel-javaagent:1.24"
        volumeMounts:
        - name: otel
          mountPath: /mnt/otel
      volumes:        
        - name: otel
          emptyDir: {}
```
