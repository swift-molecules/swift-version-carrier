public import Version
public import Version_Time
public import Carrier

extension Version.Calendar: Carrier.`Protocol` {

    public typealias Underlying = Version.Calendar
}
