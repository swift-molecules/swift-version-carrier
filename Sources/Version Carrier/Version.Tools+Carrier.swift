public import Version
public import Carrier_Protocol

extension Version.Tools: Carrier.`Protocol` {

    public typealias Underlying = Version.Tools
}
