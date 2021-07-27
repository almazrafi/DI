import Foundation

public protocol ServiceScope {

    func makeStorage(for service: Any) -> ServiceStorage
}
