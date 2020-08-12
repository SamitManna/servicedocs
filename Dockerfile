FROM node:14.7.0-alpine3.12

ENV MKDOCS_VERSION=1.0.4 \
    LIVE_RELOAD_SUPPORT='false' \
    ADD_MODULES='false' \
    FAST_MODE='false' \
    PYTHONUNBUFFERED=1 \
    GIT_REPO='false' \
    GIT_BRANCH='master' \
    AUTO_UPDATE='false' \
    UPDATE_INTERVAL=15

ADD . /content/

WORKDIR /content

RUN \
    apk add --update \
        ca-certificates \
        bash \
        git \
        openssh \
        python3 \
        python3-dev \
		py3-pip \
        build-base
		
RUN	pip install mkdocs==${MKDOCS_VERSION}
RUN	pip install mkdocs-bootswatch==1.0.0
RUN	npm install netlify-cli -g

ENTRYPOINT ["/bin/bash", "deploy-site-prod.sh"]
