# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a container registry project that publishes Docker images to GitHub Container Registry (GHCR). The repository appears to be in early development stages with minimal source code currently present.

## Development Environment

- **Node.js Version**: v22.18.0 (specified in .nvmrc)
- **Docker**: Uses node:22.18-alpine base image
- **Container Registry**: GitHub Container Registry (ghcr.io)

## Docker Operations

### Building the Docker Image
```bash
docker build -t container-registry .
```

### Running Locally
The Dockerfile sets up a Node.js 22.18 Alpine environment with a non-root user setup.

## CI/CD Pipeline

### Production Deployment
- **Trigger**: Pushes to `production` branch or tags matching `v**`
- **Registry**: GitHub Container Registry (ghcr.io)
- **Process**: 
  - Builds Docker image using Buildx
  - Tags with both version-specific and `latest` tags
  - Signs images using Cosign for security
  - Uses GitHub Actions cache for faster builds

### Branch Strategy
- `main`: Main development branch
- `production`: Production deployment branch

## GitHub Configuration

- **Dependabot**: Configured for weekly npm and GitHub Actions updates
- **Issue Templates**: Available for bug reports and feature requests
- **Team Assignment**: DevOps team auto-assigned to dependency updates

## Security Features

- Docker images are signed using Sigstore's Cosign
- Non-root user configuration in Docker
- GitHub Container Registry with proper permissions

## Notes for Development

- This appears to be a containerized Node.js application
- No source code or package.json currently present - project is in initial setup phase
- Production workflow suggests this will be a production-ready container registry service