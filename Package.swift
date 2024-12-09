// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "AudioRecorder",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .executable(name: "AudioRecorder", targets: ["AudioRecorder"])
    ],
    targets: [
        .executableTarget(
            name: "AudioRecorder",
            path: "AudioRecorder"
        )
    ]
)
