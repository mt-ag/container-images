FROM eclipse-temurin:17.0.6_10-jdk

WORKDIR /opt/scripts
COPY ./scripts/startup.sh startup.sh
RUN chmod +x startup.sh

ENTRYPOINT ["/opt/scripts/startup.sh"]
