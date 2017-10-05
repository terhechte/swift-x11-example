// swift-tools-version:4.0

import PackageDescription

let package = Package(
	name:"x11-example",
	products: [
        .executable(name: "x11-example",targets: ["DEMO"]),
    ],
  	dependencies: [
    	.package(url: "https://github.com/aestesis/X11.git", from: "1.0.2")
    ],
    targets: [
        .target(name: "DEMO",dependencies: ["X11"],path:".")
    ]
)
