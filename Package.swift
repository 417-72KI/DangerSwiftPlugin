// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "DangerSwiftPlugin",
    products: [
        .library(
            name: "DangerSwiftPlugin",
            targets: ["DangerSwiftPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/danger/danger-swift.git", from: "3.14.0")
    ],
    targets: [
        .target(
            name: "DangerSwiftPlugin",
            dependencies: [
                .product(name: "Danger", package: "danger-swift")
            ]),
        .testTarget(
            name: "DangerSwiftPluginTests",
            dependencies: [
                "DangerSwiftPlugin",
                .product(name: "DangerFixtures", package: "danger-swift")
            ]),
    ]
)
