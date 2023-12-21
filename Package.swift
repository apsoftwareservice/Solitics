// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SoliticMasterPackage",
    products: [
        .library(name: "SoliticsLib", targets: ["SoliticMasterPackage"])
    ],
    dependencies: [
      .package(id: "swift.solitics", exact: "1.0.4")
    ],
    targets: [
        .target(name: "SoliticMasterPackage", dependencies: [
          .product(name: "SoliticMasterPackage", package: "swift.solitics")
        ])
    ]
)
