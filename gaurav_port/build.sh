#!/bin/bash

echo "Downloading Flutter..."
git clone https://github.com/flutter/flutter.git -b stable --depth 1
export PATH="$PATH:`pwd`/flutter/bin"

echo "Flutter verification..."
flutter doctor -v

echo "Building Web Project..."
flutter build web --release

echo "Build successful!"
