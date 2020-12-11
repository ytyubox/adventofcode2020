// swift-tools-version:5.2
import PackageDescription
let packageName = "AdventOfCode2020" // <-- Change this to yours
let package = Package(
    name: "",
    // platforms: [.iOS("9.0")],
    products: [
        .library(name: "AdventOfCode2020", targets: ["AdventOfCode2020"]),
    ],
    targets: [
        .target(
            name: "AdventOfCode2020",
            path: "Library"
        ),
        .testTarget(
            name: "AdventOfCode2020Tests",
            dependencies: ["AdventOfCode2020"],
            path: "Tests"
        ),
    ]
)
