// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DangerSwiftPlugin",
    products: [
        .library(
            name: "DangerSwiftPlugin",
            targets: ["DangerSwiftPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danger/danger-swift.git", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "DangerSwiftPlugin",
            dependencies: ["Danger"]),
        .testTarget(
            name: "DangerSwiftPluginTests",
            dependencies: ["DangerSwiftPlugin"]),
    ]
)
