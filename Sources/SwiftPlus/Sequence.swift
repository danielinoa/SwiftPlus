//
//  Created by Daniel Inoa on 12/29/20.
//

public extension Sequence {

    /// Returns an array containing the non-nil elements.
    /// # Example
    /// ```
    /// let numbers: [Int] = [1, nil, 2, nil, 3].compact() // returns [1, 2, 3]
    /// ```
    func compact<T>() -> [T] where Element == Optional<T> {
        compactMap { $0 }
    }

    /// Returns an array containing the elements that can be casted to the specified type.
    /// # Example
    /// ```
    /// let elements: [Any] = [1, "abc", 2, true, 3]
    /// let integers: [Int] = elements.compactCast(to: Int.self) // returns [1, 2, 3]
    /// ```
    func compactCast<T>(to type: T.Type = T.self) -> [T] {
        compactMap { $0 as? T }
    }
}
