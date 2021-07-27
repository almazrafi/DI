import Foundation

public struct ServiceWeakScope: ServiceScope {

    public static let `default` = Self()

    private init() { }

    public func makeStorage(for service: Any) -> ServiceStorage {
        ServiceWeakStorage(service: service)
    }
}
