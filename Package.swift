// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DI",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10)
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
