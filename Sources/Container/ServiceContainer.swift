import Foundation

public final class ServiceContainer {

    private var services: [ServiceKey: ServiceStorage] = [:]
    private let lock = NSRecursiveLock()

    public func resolve<Service>(
        name: String = #function,
        traits: [AnyHashable] = [],
        using builder: () -> Service,
        at scope: ServiceScope
    ) -> Service {
        lock.lock()

        defer {
            lock.unlock()
        }

        let serviceKey = ServiceKey(
            type: Service.self,
            name: name,
            traits: traits
        )

        if let service = services[serviceKey]?.service.flatMap({ $0 as? Service }) {
            return service
        }

        let service = builder()
        let storage = scope.makeStorage(for: service)

        services[serviceKey] = storage

        return service
    }

    public func weak<Service>(
        name: String = #function,
        traits: [AnyHashable] = [],
        using builder: () -> Service
    ) -> Service {
        resolve(
            name: name,
            traits: traits,
            using: builder,
            at: ServiceWeakScope.default
        )
    }

    public func shared<Service>(
        name: String = #function,
        traits: [AnyHashable] = [],
        using builder: () -> Service
    ) -> Service {
        resolve(
            name: name,
            traits: traits,
            using: builder,
            at: ServiceSharedScope.default
        )
    }
}
