public import Carrier
public import Version

extension Version.Semantic: Carrier.`Protocol` {

    public typealias Underlying = Version.Semantic
}
