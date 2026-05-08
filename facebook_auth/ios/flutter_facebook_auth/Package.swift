// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "flutter_facebook_auth",
  platforms: [
    .iOS("12.0")
  ],
  products: [
    .library(name: "flutter-facebook-auth", targets: ["flutter_facebook_auth"])
  ],
  dependencies: [
    .package(url: "https://github.com/facebook/facebook-ios-sdk", from: "18.0.2")
  ],
  targets: [
    .target(
      name: "flutter_facebook_auth",
      dependencies: [
        .product(name: "FacebookLogin", package: "facebook-ios-sdk")
      ]
    )
  ]
)
