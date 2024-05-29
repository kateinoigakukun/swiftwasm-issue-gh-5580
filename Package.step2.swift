// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Example",
    dependencies: [
        .package(path: "./JavaScriptKit"),
    ],
    targets: [
        .executableTarget(name: "Example", dependencies: [.product(name: "JavaScriptKit", package: "JavaScriptKit")]),
    ]
)
