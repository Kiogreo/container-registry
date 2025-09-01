
ARG NODE_VERSION=22.18

FROM node:${NODE_VERSION}-alpine
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}
ENV NODE_VERSION=${NODE_VERSION}
LABEL key="org.opencontainers.image.description" value="Base image for PRODUCTION"
WORKDIR /app
