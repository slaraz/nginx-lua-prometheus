FROM nginx:1.13
RUN apt-get update && apt-get install -y \
    nginx-common \
    libnginx-mod-http-ndk \
    libnginx-mod-http-lua
WORKDIR /lua
COPY nginx-lua-prometheus/prometheus.lua .
COPY nginx.conf /etc/nginx/nginx.conf
