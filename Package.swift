// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-version-carrier",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(
            name: "Version Carrier",
            targets: ["Version Carrier"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-version.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-carrier.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Version Carrier",
            dependencies: [
                .product(name: "Version", package: "swift-version"),
                .product(name: "Carrier Protocol", package: "swift-carrier"),
            ]
        ),
        .testTarget(
            name: "Version Carrier Tests",
            dependencies: [
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
        .enableUpcomingFeature("InferIsolatedConformances"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
