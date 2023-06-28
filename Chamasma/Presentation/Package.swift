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
        .package(url: "https://github.com/lukaskubanek/LoremSwiftum.git", from: "2.2.1"),
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: [
                "DesignSystem",
                "Domain",
                "LoremSwiftum",
            ]
        ),
        .testTarget(
            name: "PresentationTests",
            dependencies: ["Presentation"]
        ),
    ]
)
