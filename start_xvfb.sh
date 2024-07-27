#!/bin/bash

cd /workspaces/rf/
# Start Xvfb in the background
/usr/bin/Xvfb :99 -screen 0 1280x1024x24  &
