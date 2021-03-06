// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SettingsCore",
    products: [
        .library(name: "SettingsCore", targets: ["SettingsCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/fluent-postgresql.git", from: "1.0.0"),
        .package(url: "https://github.com/LiveUI/ApiCore.git", .branch("master")),
        .package(url: "https://github.com/LiveUI/ErrorsCore.git", .branch("master")),
        .package(url: "https://github.com/LiveUI/VaporTestTools.git", from: "0.1.5"),
        .package(url: "https://github.com/LiveUI/FluentTestTools.git", .branch("master"))
    ],
    targets: [
        .target(name: "SettingsCore", dependencies: [
            "Vapor",
            "ApiCore",
            "Fluent",
            "FluentPostgreSQL",
            "ErrorsCore"
            ]
        ),
        .testTarget(name: "SettingsCoreTests", dependencies: [
            "SettingsCore",
            "ApiCore",
            "VaporTestTools",
            "FluentTestTools",
            "ApiCoreTestTools"
            ]
        )
    ]
)
