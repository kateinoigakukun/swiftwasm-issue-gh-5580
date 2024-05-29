#!/bin/bash
TOOLCHAIN_PATH=${TOOLCHAIN_PATH:-"$HOME/Library/Developer/Toolchains/swift-wasm-6.0-SNAPSHOT-2024-04-19-a.xctoolchain"}

# Step 1. Initial clean build
rm -rf .build
cp Package.step1.swift Package.swift
"$TOOLCHAIN_PATH/usr/bin/swift" build --static-swift-stdlib
if [ $? -ne 0 ]; then
  echo "Failed to build with step1!?"
  exit 1
fi

rm -rf .build.step1
cp -R .build .build.step1

# Step 2. Update Package.swift
cp Package.step2.swift Package.swift
"$TOOLCHAIN_PATH/usr/bin/swift" build --static-swift-stdlib
if [ $? -ne 0 ]; then
  echo "Failed to build with step2!?"
  exit 1
fi

rm -rf .build.step2
cp -R .build .build.step2

# Step 3. Clean build
rm -rf .build
"$TOOLCHAIN_PATH/usr/bin/swift" build --static-swift-stdlib
if [ $? -ne 0 ]; then
  echo "Failed to build with step3!?"
  exit 1
fi

rm -rf .build.step3
cp -R .build .build.step3

diff .build.step2/debug/Example.build/Example.autolink .build.step3/debug/Example.build/Example.autolink

if [ $? -eq 0 ]; then
  echo "No difference between step2 and step3!?"
  exit 1
fi

echo "Reproduced the issue!"
