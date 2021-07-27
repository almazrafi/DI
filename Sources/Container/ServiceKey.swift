import Foundation

internal struct ServiceKey: Hashable {

    internal let type: Any.Type
    internal let name: String

    internal func hash(into hasher: inout Hasher) {
        ObjectIdentifier(type).hash(into: &hasher)

        name.hash(into: &hasher)
    }
}

extension ServiceKey: Equatable {

    internal static func == (lhs: Self, rhs: Self) -> Bool {
        (lhs.type == rhs.type) && (lhs.name == rhs.name)
    }
}
