FROM amazoncorretto:17.0.6

WORKDIR /opt/scripts
COPY ./scripts/startup.sh startup.sh
RUN chmod +x startup.sh

ENTRYPOINT ["/opt/scripts/startup.sh"]
