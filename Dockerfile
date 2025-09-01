FROM node:22.18-alpine
RUN addgroup -S nodegroup
RUN adduser -S node -G nodegroup
WORKDIR /app
