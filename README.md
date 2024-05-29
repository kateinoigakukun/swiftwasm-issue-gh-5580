- Issue: https://github.com/swiftwasm/swift/issues/5580
- Toolchain: [swift-wasm-6.0-SNAPSHOT-2024-04-19-a](https://github.com/swiftwasm/swift/releases/tag/swift-wasm-6.0-SNAPSHOT-2024-04-19-a)


```console
$ ./check.sh
...
wasm-ld: error: /Library/Developer/Toolchains/swift-wasm-6.0-SNAPSHOT-2024-04-19-a.xctoolchain/usr/lib/swift_static/wasi/libswift_StringProcessing.a(_StringProcessing.o): undefined symbol: $s12_RegexParser13PrettyPrinterVMn
wasm-ld: error: /Library/Developer/Toolchains/swift-wasm-6.0-SNAPSHOT-2024-04-19-a.xctoolchain/usr/lib/swift_static/wasi/libswift_StringProcessing.a(_StringProcessing.o): undefined symbol: $s12_RegexParser9_TreeNodeMp
wasm-ld: error: /Library/Developer/Toolchains/swift-wasm-6.0-SNAPSHOT-2024-04-19-a.xctoolchain/usr/lib/swift_static/wasi/libswift_StringProcessing.a(_StringProcessing.o): undefined symbol: $s12_RegexParser9_TreeNodeP8childrenSayxGSgvgTq
clang: error: linker command failed with exit code 1 (use -v to see invocation)
...
```
