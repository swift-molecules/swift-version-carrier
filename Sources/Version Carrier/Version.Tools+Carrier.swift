public import Version
public import Carrier

extension Version.Tools: Carrier.`Protocol` {

    public typealias Underlying = Version.Tools
}
