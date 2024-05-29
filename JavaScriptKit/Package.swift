// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "JavaScriptKit",
    products: [
        .library(name: "JavaScriptKit", targets: ["JavaScriptKit"]),
    ],
    targets: [
        .target(
            name: "JavaScriptKit",
            dependencies: ["_CJavaScriptKit"],
            resources: [.copy("Runtime")]
        ),
        .target(name: "_CJavaScriptKit"),
    ]
)
