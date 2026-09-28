// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LumiIllustrations",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
    ],
    products: [
        .library(name: "LumiIllustrationsKit", targets: ["LumiIllustrationsKit"]),
    ],
    targets: [
        .target(
            name: "LumiIllustrationsKit",
            resources: [.copy("Resources/Illustrations")]
        ),
    ]
)
