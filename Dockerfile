FROM nginx

RUN apt-get update \
 && apt-get install -y -q --no-install-recommends \
    ca-certificates \
    wget \
 && apt-get clean

RUN wget -O /etc/nginx/nginx.conf -- https://binxidevstorageaccount.blob.core.windows.net/tmp/nginx.conf

CMD service nginx restart
