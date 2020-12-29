//
//  Created by Daniel Inoa on 12/29/20.
//

extension Collection {

    /// Returns a new empty collection.
    static var empty: [Element] { .init() }

    /// Returns `true` if the collection is not empty.
    var hasElements: Bool { !isEmpty }
}
