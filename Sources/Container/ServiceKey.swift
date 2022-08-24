import Foundation

internal struct ServiceKey: Hashable {

    internal let type: Any.Type
    internal let name: String
    internal let traits: [AnyHashable]

    internal func hash(into hasher: inout Hasher) {
        ObjectIdentifier(type).hash(into: &hasher)
        name.hash(into: &hasher)
        traits.hash(into: &hasher)
    }
}

extension ServiceKey: Equatable {

    internal static func == (lhs: Self, rhs: Self) -> Bool {
        (lhs.type == rhs.type)
            && (lhs.name == rhs.name)
            && (lhs.traits == rhs.traits)
    }
}
