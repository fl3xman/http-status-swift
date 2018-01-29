// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HttpStatus",
    products: [
        .library(name: "HttpStatus", targets: ["HttpStatus"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "HttpStatus", path: "./Sources"),
        .testTarget(name: "HttpStatusTests", dependencies: ["HttpStatus"]),
    ]
)
