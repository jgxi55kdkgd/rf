# Base Image
FROM mcr.microsoft.com/playwright/python:v1.45.1-jammy

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive

ENV DISPLAY=:99
ENV PATH=/home/pwuser/.local/bin:/vscode/vscode-server/bin/linux-x64/f1e16e1e6214d7c44d078b1f0607b2388f29d729/bin/remote-cli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#ENV PATH=/home/pwuser/.local/bin