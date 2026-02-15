//
//  Created by Daniel Inoa on 3/9/23.
//

/// A property wrapper that signals no mutation on assignment and
/// prevents state modification of the instance it is called on.
@propertyWrapper
public struct NonMutating<T> {

    // MARK: - Accessor

    public var wrappedValue: T {
        get { box.value }
        nonmutating set { box.value = newValue }
    }

    private let box: Box<T>

    // MARK: - Lifecycle

    public init(wrappedValue: T) {
        box = .init(value: wrappedValue)
    }

    // MARK: - Box

    private class Box<V> {

        var value: V

        init(value: V) {
            self.value = value
        }
    }
}
