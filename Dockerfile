# syntax=docker/dockerfile:1
FROM debian
RUN apt update \
    && apt upgrade -y \
    && apt install default-jre -y
ENV BE_VERSION=2022_4
ENV BE_VERSION_URL=2022.4
WORKDIR /tmp
COPY src .
# ADD https://portswigger-cdn.net/burp/releases/download?product=enterprise&version=${BE_VERSION_URL}&type=Linux ./burpsuite_enterprise_linux_v${BE_VERSION}.zip
# RUN 7zip e ./burpsuite_enterprise_linux_v${BE_VERSION}.zip
# XXX: https://portswigger.net/burp/documentation/enterprise/getting-started/unattended-installation
# Note: This is the install script, it runs within it's own process then exit
# CMD ["./burpsuite_enterprise_linux_v2022_4.sh", "-q", "-varfile ./response.varfile"]
RUN ./burpsuite_enterprise_linux_v2022_4.sh -q -varfile ./response.varfile
ENTRYPOINT ["./process_wrapper.sh"]
EXPOSE 8080