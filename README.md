# DangerSwiftPlugin

Makes easier to call child DSLs (e.g. `git`, `github`)

## Usage

### Marathon(Recommended)
- Dangerfile.swift
  ```swift:Dangerfile.swift
  import DangerSwiftPlugin // package: https://github.com/417-72KI/DangerSwiftPlugin.git
  ```

### Swift Package Manager

- Package.swift
  ```swift:Package.swift
    products: [
        ...
        .library(name: "DangerDeps[Product name (optional)]", type: .dynamic, targets: ["DangerDependencies"]),
        ...
    ],
    dependencies: [
        ...
        .package(url: "https://github.com/danger/swift.git", from: "2.0.0"),
        .package(url: "https://github.com/417-72KI/DangerSwiftPlugin.git", from: "0.2.0")
        ...
    ],
    targets: [
        .target(name: "DangerDependencies", dependencies: ["Danger", "DangerSwiftPlugin"]),
        ...
    ]
  ```
