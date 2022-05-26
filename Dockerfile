# syntax=docker/dockerfile:1
FROM debian:latest
RUN apt update \
    && apt upgrade -y \
    && apt install default-jre p7zip-full -y
ENV BE_VERSION=2022_4
ENV BE_VERSION_URL=2022.4
WORKDIR /tmp
COPY src .
ADD https://portswigger-cdn.net/burp/releases/download?product=enterprise&version=${BE_VERSION_URL}&type=Linux ./burpsuite_enterprise_linux_v${BE_VERSION}.zip
RUN 7z e ./burpsuite_enterprise_linux_v${BE_VERSION}.zip
RUN chmod +x ./burpsuite_enterprise_linux_v${BE_VERSION}.sh ./process_wrapper.sh
# XXX: https://portswigger.net/burp/documentation/enterprise/getting-started/unattended-installation
RUN ./burpsuite_enterprise_linux_v${BE_VERSION}.sh -q -varfile ./response.varfile
CMD ["./process_wrapper.sh"]
EXPOSE 8080