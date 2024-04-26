// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "skin",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "skin",
            targets: [
                "skin",
                "skin_sdk_core",
                "skin_effect_player",
                "skin_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "skin",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/skin.zip",
            checksum: "0b2c09d6754890ee30733de8f03d6106b4dc1d143db0a7b511da7c242f33cb8e"
        ),
        .target(
            name: "skin_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "skin_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "skin_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
