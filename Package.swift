// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-wavenumber",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Wavenumber", targets: ["Wavenumber"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-frequency.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-velocity.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Wavenumber",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Frequency", package: "swift-frequency"),
                .product(name: "Velocity", package: "swift-velocity"),
            ]
        ),
        .testTarget(
            name: "Wavenumber Tests",
            dependencies: [
                .target(name: "Wavenumber")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
