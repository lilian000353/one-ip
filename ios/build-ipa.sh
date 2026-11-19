#!/bin/bash
# Build an UNSIGNED .ipa for One IP (iOS).
# The .app is compiled with code signing disabled; sign it yourself with
# AltServer / AltStore (your own Apple ID) when installing on your iPhone.
set -euo pipefail
cd "$(dirname "$0")"

xcodebuild \
  -project OneIP.xcodeproj \
  -scheme OneIP \
  -configuration Release \
  -sdk iphoneos \
  -derivedDataPath build/DerivedData \
  CODE_SIGNING_ALLOWED=NO \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY="" \
  build

rm -rf build/Payload build/one-ip.ipa
mkdir -p build/Payload
cp -R build/DerivedData/Build/Products/Release-iphoneos/OneIP.app build/Payload/
(cd build && zip -qry one-ip.ipa Payload)
ls -lh build/one-ip.ipa
