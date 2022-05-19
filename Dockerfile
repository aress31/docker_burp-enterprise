# build with: docker build -t burp-enterprise:2022.4 .
# launch with: docker run -d -p 8080:8080 burp-enterprise:2022.4
# syntax=docker/dockerfile:1
FROM debian
RUN apt update && \
    apt upgrade -y && \
    apt install default-jre -y
ENV BE_VERSION=2022_4
WORKDIR /tmp
COPY src .
# ADD https://portswigger-cdn.net/burp/releases/download?product=enterprise&version=${BE_VERSION}&type=Linux /tmp/test/
# https://portswigger.net/burp/documentation/enterprise/getting-started/unattended-installation
CMD ["./burpsuite_enterprise_linux_v2022_4.sh", "-q", "-varfile ./response.varfile"]
EXPOSE 8080