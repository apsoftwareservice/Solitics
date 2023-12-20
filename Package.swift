// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SoliticsSDK",
    products: [
        .library(name: "SoliticsSDK", targets: ["SoliticsSDK"])
    ],
    dependencies: [
        .package(id: "swift.solitics", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "SoliticsSDK", dependencies: [
            .product(name: "untitled", package: "swift.solitics")
        ])
    ]
)
