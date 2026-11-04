# swift-version-carrier

Use this package when you write code generic over `Carrier.Protocol` and want to pass version numbers to it. It makes `Version.Semantic`, `Version.Tools` and `Version.Calendar` conform to `Carrier.Protocol`, each as its own underlying value. Import it next to swift-version, because those types do not conform without it. To compare, parse or bump the versions themselves, use swift-version. To work with `Carrier.Protocol` itself, use swift-carrier.
