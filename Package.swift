// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKPhotoGallery",
    defaultLocalization: "en",
    products: [
        .library(
            name: "DKPhotoGallery",
            type: .dynamic,
            targets: ["DKPhotoGallery"]),
    ],
    dependencies: [
        .package(url: "https://github.com/iruirc/SwiftyGif.git", exact: "5.4.500"),
        .package(url: "https://github.com/iruirc/SDWebImage.git", exact: "15.19.100"),
    ],
    targets: [
        .target(
            name: "DKPhotoGallery",
            dependencies: [
                .product(name: "SwiftyGif-Dynamic", package: "SwiftyGif"),
                "SDWebImage"
            ],
            path: "DKPhotoGallery"),
    ]
)
