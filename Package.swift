// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "DI",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "DI",
            targets: ["DI"]
        )
    ],
    targets: [
        .target(
            name: "DI",
            path: "Sources"
        ),
        .testTarget(
            name: "DITests",
            dependencies: ["DI"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
