// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RxGtk",
    products: [
        .library(name: "RxGtk", targets: ["RxGtk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", branch: "main"),
        .package(url: "https://github.com/rhx/SwiftGtk.git", branch: "gtk3"),
    ],
    targets: [
        .target(
		name: "RxGtk",
		dependencies: [
			      .product(name: "Gtk", package: "SwiftGtk"),
			      .product(name: "RxCocoa", package: "RxSwift"),
			      "RxSwift"
		]
	),
        .testTarget(name: "RxGtkTests", dependencies: ["RxGtk"]),
    ]
)
