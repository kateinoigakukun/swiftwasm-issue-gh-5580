TOOLCHAIN_PATH="$HOME/Library/Developer/Toolchains/swift-wasm-6.0-SNAPSHOT-2024-04-19-a.xctoolchain"
cp Package.step1.swift Package.swift
env DYLD_LIBRARY_PATH="$TOOLCHAIN_PATH/usr/lib/swift/macosx" "$TOOLCHAIN_PATH/usr/bin/swift" build --triple wasm32-unknown-wasi --static-swift-stdlib
if [ $? -ne 0 ]; then
  echo "Failed to build with step1!?"
  exit 1
fi

cp Package.step2.swift Package.swift
env DYLD_LIBRARY_PATH="$TOOLCHAIN_PATH/usr/lib/swift/macosx" "$TOOLCHAIN_PATH/usr/bin/swift" build --triple wasm32-unknown-wasi --static-swift-stdlib
if [ $? -eq 0 ]; then
  echo "Succeeded to build with step2!? It should fail!"
  exit 1
fi

echo "Reproduced the issue!"
