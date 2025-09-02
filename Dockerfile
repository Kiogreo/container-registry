
ARG NODE_VERSION=22.18

FROM node:${NODE_VERSION}-alpine
ARG NODE_ENV=development
ARG IMAGE_SOURCE="https://github.com/Kiogreo/container-registry"
ENV NODE_ENV=${NODE_ENV}
ENV NODE_VERSION=${NODE_VERSION}
ENV IMAGE_SOURCE=${IMAGE_SOURCE}
LABEL org.opencontainers.image.source=${IMAGE_SOURCE}
LABEL org.opencontainers.image.description="Base image for PRODUCTION"
WORKDIR /app
