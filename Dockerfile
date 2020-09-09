FROM ubuntu:20.04
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install curl gnupg libpulse0 libsecret-1-0 gnome-panel libxv1 va-driver-all mesa-utils mesa-utils-extra locales dbus && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install teams
COPY entrypoint.sh /
CMD /entrypoint.sh
