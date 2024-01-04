//
//  Created by Daniel Inoa on 12/29/20.
//

public extension Collection {

    /// Returns `true` if the collection is not empty.
    var hasElements: Bool { !isEmpty }

    /// Returns the element at the specified index.
    /// Returns `nil` if the specified index is invalid.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
