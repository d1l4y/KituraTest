// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "kituraServer",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.8.0")),
      .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.7.1"),
      .package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", from: "9.0.0"),
      .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.0.0"),
      .package(url: "https://github.com/IBM-Swift/Health.git", from: "1.0.0"),
      .package(url: "https://github.com/IBM-Swift/Kitura-OpenAPI.git", from: "1.1.1"),
      .package(url: "https://github.com/IBM-Swift/Swift-Kuery-ORM.git", from: "0.3.1"),
      .package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL.git", from: "1.2.0"),
      .package(url: "https://github.com/IBM-Swift/Kitura-CredentialsHTTP.git", from: "2.1.0"),

    ],
    targets: [
      .target(name: "kituraServer", dependencies: [ .target(name: "Application") ]),
      .target(name: "Application", dependencies: [ "Kitura", "HeliumLogger", "CloudEnvironment","SwiftMetrics", "Health", "KituraOpenAPI", "SwiftKueryORM", "SwiftKueryPostgreSQL", "CredentialsHTTP",

      ]),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura", "HeliumLogger", "KituraOpenAPI", "SwiftKueryORM", "SwiftKueryPostgreSQL", "CredentialsHTTP", ])
    ]
)
