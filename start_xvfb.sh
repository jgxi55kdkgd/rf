#!/bin/bash

# Start Xvfb in the background
Xvfb :99 -screen 0 1280x1024x24 &

# Execute the container's main process (what's set in CMD)
exec "$@"
