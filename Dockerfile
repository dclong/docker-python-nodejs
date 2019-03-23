FROM dclong/python

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && npm install -g n \
    && n 10.15.3 \
    && apt-get autoremove \
    && apt-get autoclean

