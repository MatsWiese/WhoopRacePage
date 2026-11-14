// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhoopRacePage",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "WhoopRacePage",
            dependencies: ["Ignite"],
            path: "Sources"),
    ]
)
