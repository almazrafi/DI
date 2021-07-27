import Foundation

public struct ServiceSharedScope: ServiceScope {

    public static let `default` = Self()

    private init() { }

    public func makeStorage(for service: Any) -> ServiceStorage {
        ServiceSharedStorage(service: service)
    }
}
