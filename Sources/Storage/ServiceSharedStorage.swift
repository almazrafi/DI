import Foundation

public struct ServiceSharedStorage: ServiceStorage {

    public let service: Any?

    public init(service: Any) {
        self.service = service
    }
}
