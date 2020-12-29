//
//  Created by Daniel Inoa on 12/29/20.
//

extension Sequence {

    /// Returns an array containing the non-nil elements.
    func compact<T>() -> [T] where Element == Optional<T> {
        compactMap { $0 }
    }
}
