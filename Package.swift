// swift-tools-version:5.3
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
        .package(url: "https://github.com/iruirc/SwiftyGif.git", branch("VSDC")),
        .package(url: "https://github.com/iruirc/SDWebImage.git", branch("VSDC")),
    ],
    targets: [
        .target(
            name: "DKPhotoGallery",
            dependencies: ["SwiftyGif-Dynamic", "SDWebImage"],
            path: "DKPhotoGallery"),
    ]
)
