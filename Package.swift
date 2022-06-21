// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ImageAttributesPublishPlugin",
	platforms: [
		.macOS(.v12),
	],
    products: [
        .library(
            name: "ImageAttributesPublishPlugin",
            targets: ["ImageAttributesPublishPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alexaubry/HTMLString", from: "6.0.1"),
		.package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    ],
    targets: [
        .target(    
            name: "ImageAttributesPublishPlugin",
            dependencies: ["HTMLString", "Publish"]),
        .testTarget(
            name: "ImageAttributesPublishPluginTests",
            dependencies: ["ImageAttributesPublishPlugin"]),
    ]
)
