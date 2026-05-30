// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "Texture",
  platforms: [
    .iOS(.v14),
    .tvOS(.v14),
  ],
  products: [
    .library(
      name: "AsyncDisplayKit",
      targets: ["AsyncDisplayKit"]
    ),
  ],
  targets: [
    .target(
      name: "AsyncDisplayKit",
      path: "Source",
      exclude: [
        "AsyncDisplayKit",
        "Info.plist",
      ],
      publicHeadersPath: ".",
      linkerSettings: [
        .linkedLibrary("c++"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("Foundation"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("UIKit"),
      ]
    ),
  ],
  cxxLanguageStandard: .cxx11
)
