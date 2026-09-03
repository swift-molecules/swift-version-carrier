public import Version
public import Carrier_Protocol

extension Version.Semantic: Carrier.`Protocol` {

    public typealias Underlying = Version.Semantic
}
