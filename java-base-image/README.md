# Java Base Image

This repository contains the Dockerfiles for our generic java base image that ships with a small startup script, providing essential features that can be useful in some contexts:

* extending your Java Truststore with a set of CA certificates
* setting a `javaagent` flag for easier instrumentation of monitoring and troubleshooting tools

The configuration is completly done using environment variables.

## Usages

```dockerfile
FROM demtag/java-base-image:corretto-17
COPY /some/path/application.jar /app/application.jar
CMD ["-jar", "/app/backend.jar"] 
```

## Environment Variables

|Variable|Description|
|---|---|
|`JVM_EXTRA_CERTS`|Path to the directory containing all the CA-certificates that should be added to the trust store. Only files ending on `.pem` are respected.|
|`JAVA_AGENT_LOCATION`|Path to the jar file that should be loaded with the `-javaagent` flag. If this variable is set and the file does not exist, the startup scripts exits with a error code.|
|`JAVA_SECURITY_SKIP_EGD`|If this variable is set, no `java.security.egd` property will be provided for the java process.|
|`DEBUG`|If this propert is set, the full startup command will be printed before execution.|
