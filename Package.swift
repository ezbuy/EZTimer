// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EZTimer",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "EZTimer",
            targets: ["EZTimer"]),
    ],
    targets: [
        .target(
            name: "EZTimer",
            path: ".",
            sources: ["Sources/"]
        ),
    ]
)
