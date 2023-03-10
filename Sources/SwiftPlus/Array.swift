//
//  Created by Daniel Inoa on 3/9/23.
//

extension Array {

    /// Sets the given value at the specified `writableKeyPath` for every array element.
    @discardableResult
    func setEach<V>(_ writableKeyPath: ReferenceWritableKeyPath<Element, V>, to value: V) -> Self {
        forEach { $0[keyPath: writableKeyPath] = value }
        return self
    }

    /// Returns an empty array.
    static var empty: Self {
        .init()
    }
}
