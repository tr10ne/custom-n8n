FROM node:24-alpine3.20

ARG N8N_VERSION=2.45.5

RUN apk add --no-cache \
    ghostscript \
    graphicsmagick \
    python3 \
    python3-dev \
    py3-pip \
    build-base \
    g++ \
    make \
    ca-certificates \
    git \
    openssl \
    su-exec \
    tini \
    libc6-compat

RUN npm install -g npm@10.8.1

RUN if ! id -u node > /dev/null 2>&1; then \
    addgroup -g 1000 node && \
    adduser -u 1000 -G node -s /bin/sh -D node; \
    fi

RUN npm install -g n8n@${N8N_VERSION}

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node

WORKDIR /home/node

USER node

EXPOSE 5678

ENTRYPOINT ["tini", "--"]

CMD ["n8n"]