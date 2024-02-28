#!/bin/bash
set -e

# Use this script to update the binary file in the /bin folder.

echo "Building.."
swift build -c release
echo "Copy to /bin folder..."
cp -fr .build/release/StreamDeckViewMacro ./bin
echo "Making file executable..."
chmod +x ./bin/StreamDeckViewMacro