// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Presentation",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "Presentation",
            targets: ["Presentation"]
        ),
    ],
    dependencies: [
        .package(path: "../DesignSystem"),
        .package(path: "../Domain"),
        .package(url: "https://github.com/twostraws/CodeScanner", from: "2.3.2"),
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.2.1"),
        .package(url: "https://github.com/exyte/chat", from: "0.0.4"),
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: [
                "DesignSystem",
                "Domain",
                "CodeScanner",
                "LoremSwiftum",
                .product(name: "Chat", package: "chat"),
            ]
        ),
        .testTarget(
            name: "PresentationTests",
            dependencies: ["Presentation"]
        ),
    ]
)
