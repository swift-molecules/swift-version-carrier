public import Carrier
public import Version

extension Version.Tools: Carrier.`Protocol` {

    public typealias Underlying = Version.Tools
}
