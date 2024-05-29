// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Example",
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", from: "0.19.0"),
    ],
    targets: [
        .executableTarget(name: "Example"),
    ]
)
