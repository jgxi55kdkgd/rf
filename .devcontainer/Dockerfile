# Base Image
FROM mcr.microsoft.com/playwright/python:v1.45.1-jammy

# Install SQLite
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y wget xvfb libnss3 libgconf-2-4 libxss1

# Install Chrome
#RUN CHROME_VERSION=$(curl -s https://api.github.com/repos/microsoft/playwright/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') && \
#    wget -q "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" && \
#    apt-get install -y ./google-chrome-stable_current_amd64.deb && \
#    rm google-chrome-stable_current_amd64.deb

# Set environment variables for Chrome
#ENV CHROME_BIN="/usr/bin/google-chrome"
#ENV CHROME_PATH="/usr/bin/google-chrome"

# Set environment variables for Xvfb
ENV DISPLAY=:99

# Create a working directory
#WORKDIR /workspace

# Copy your test suite
#COPY tests/ .

USER pwuser
# Run the tests
CMD ["sh", "-c", "Xvfb :99 -screen 0 1280x1024x24 &"]

# Run the startup script
#ENTRYPOINT ["/workspaces/rf/start_xvfb.sh"]

# Set the default command
#CMD ["bash"]