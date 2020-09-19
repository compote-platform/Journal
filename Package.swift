// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Journal",
    products: [
        .library(name: "Journal", targets: ["Journal"]),
    ],
    dependencies: [
        .package(url: "https://github.com/compote-platform/Stopwatch", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/JohnSundell/Files", .upToNextMajor(from: "4.1.1")),
    ],
    targets: [
        .target(name: "Journal", dependencies: [
            .byName(name: "Files"),
            .byName(name: "Stopwatch"),
        ]),
    ]
)
