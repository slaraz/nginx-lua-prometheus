FROM nginx
RUN apt-get update && apt-get install -y \
    nginx-extras
WORKDIR /sla
COPY nginx-lua-prometheus/prometheus.lua .
COPY nginx.conf /etc/nginx/nginx.conf
