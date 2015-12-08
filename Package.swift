import PackageDescription

let package = Package(
  dependencies: [
    .Package(url: "https://github.com/terhechte/CX11.swift.git", majorVersion: 1)
  ]
)
