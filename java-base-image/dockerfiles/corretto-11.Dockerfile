FROM amazoncorretto:11.0.18

WORKDIR /opt/scripts
COPY ./scripts/startup.sh startup.sh
RUN chmod +x startup.sh

ENTRYPOINT ["/opt/scripts/startup.sh"]
