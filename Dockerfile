ARG VARIANT=20-bookworm
FROM mcr.microsoft.com/devcontainers/typescript-node:1-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends build-essential \
     libpixman-1-dev libcairo2-dev libpango1.0-dev libgif-dev libnss3 libdbus-1-3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libgbm1 libasound2 \
     libx11-xcb1 libxcb-dri3-0 libxtst6 libgtk-3-0 libxss1 libgl1

ARG START_DBUS=start_dbus.sh
ARG START_DBUS_PATH=/tmp/${START_DBUS}
COPY ${START_DBUS} /tmp/
COPY android.sh /tmp/
RUN chmod a+x ${START_DBUS_PATH} /tmp/android.sh
