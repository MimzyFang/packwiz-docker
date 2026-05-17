# Base image with Node 20 on Debian Trixie
FROM node:lts-trixie

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Install go
RUN apt-get update && apt-get install -y --no-install-recommends \
    golang \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN go install github.com/packwiz/packwiz@latest
RUN PATH=/root/go/bin:$PATH
