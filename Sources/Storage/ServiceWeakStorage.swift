import Foundation

public struct ServiceWeakStorage: ServiceStorage {

    private weak var value: AnyObject?

    public var service: Any? {
        value
    }

    public init(service: Any) {
        value = service as AnyObject?
    }
}
