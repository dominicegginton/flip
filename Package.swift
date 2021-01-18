// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "flip",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.0"),
        .package(url: "https://github.com/dominicegginton/Spinner", from: "1.0.0")
    ],
    targets: [
        .target(name: "flip", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            "Spinner"
        ])
    ]
)
