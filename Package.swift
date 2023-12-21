// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SoliticPackage",
    products: [
        .library(name: "Solitics", targets: ["SoliticsPackage"])
    ],
    dependencies: [
      .package(id: "swift.solitics", exact: "1.0.4")
    ],
    targets: [
        .target(name: "SoliticsPackage", dependencies: [
          .product(name: "SoliticsPackage", package: "swift.solitics")
        ])
    ]
)
