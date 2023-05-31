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

    /// Returns the number of elements in the sequence that satisfy the given
    /// predicate.
    ///
    /// You can use this method to count the number of elements that pass a test.
    /// For example, this code finds the number of names that are fewer than
    /// five characters long:
    ///
    ///     let names = ["Jacqueline", "Ian", "Amy", "Juan", "Soroush", "Tiffany"]
    ///     let shortNameCount = names.count(where: { $0.count < 5 })
    ///     // shortNameCount == 3
    ///
    /// To find the number of times a specific element appears in the sequence,
    /// use the equal-to operator (`==`) in the closure to test for a match.
    ///
    ///     let birds = ["duck", "duck", "duck", "duck", "goose"]
    ///     let duckCount = birds.count(where: { $0 == "duck" })
    ///     // duckCount == 4
    ///
    /// The sequence must be finite.
    ///
    /// - Parameter predicate: A closure that takes each element of the sequence
    ///   as its argument and returns a Boolean value indicating whether
    ///   the element should be included in the count.
    /// - Returns: The number of elements in the sequence that satisfy the given
    ///   predicate.
    @inlinable
    func count(where predicate: (Element) throws -> Bool) rethrows -> Int {
        return try reduce(.zero) { try predicate($1) ? $0 + 1 : $0 }
    }
}
