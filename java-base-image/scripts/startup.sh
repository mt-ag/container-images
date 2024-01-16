#!/bin/bash

function log() {
    echo "$(date -u --iso-8601=seconds) [startup-script]: $1"
}

# If JVM_EXTRA_CERTS is set, add all files at the configured path ending with .pem to the Java Truststore.
if ! [[ -z "${JVM_EXTRA_CERTS+x}" ]]; then
    for file in $JVM_EXTRA_CERTS/*.pem; do
        log "adding ${file} to java truststore."
        keytool -cacerts -storepass "${JAVA_TRUSTSTORE_PASSWORD:-changeit}" -noprompt -importcert -file "${file}" &> /dev/null
    done
fi

# If JAVA_AGENT_LOCATION is set, adding a javaagent argument pointing to the file to the java process.
# This function also checks if the specified file exists and exits, if not.
if ! [[ -z "${JAVA_AGENT_LOCATION+x}" ]]; then
    if [ -f "${JAVA_AGENT_LOCATION}" ]; then
        log "found java agent at path ${JAVA_AGENT_LOCATION} so adding it to the process."
        JAVA_OPTS+=" -javaagent:${JAVA_AGENT_LOCATION}"
    else
        log "java agent should be at ${JAVA_AGENT_LOCATION} but was not found. Exiting..."
        exit 1
    fi
fi

# If JAVA_SECURITY_SKIP_EGD is set, skip setting the java.security.egd property.
if [[ -z "${JAVA_SECURITY_SKIP_EGD+x}" ]]; then
    JAVA_OPTS+=" -Djava.security.egd=file:/dev/./urandom"
else
    log "skip setting the java.security.egd property."
fi

JAVA_OPTS=$(echo "${JAVA_OPTS}" | awk '{$1=$1};1') # Removes trailing whitespaces

# Printing the command that will run out for debug purposes.
if ! [[ -z "${DEBUG+x}" ]]; then
    log "command to run process: exec java ${JAVA_OPTS} ${*}"
fi

exec java "${JAVA_OPTS}" "${@}"