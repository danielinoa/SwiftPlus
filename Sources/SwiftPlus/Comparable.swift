//
//  Created by Daniel Inoa on 3/9/23.
//

public extension Comparable {

    /// Returns true if the receiver is contained within the specified range.
    func isWithin(_ range: ClosedRange<Self>) -> Bool {
        range.contains(self)
    }

    /// Returns the value clamped within the specified range.
    func clamped(within range: ClosedRange<Self>) -> Self {
        clamped(upTo: range.upperBound).clamped(downTo: range.lowerBound)
    }

    /// Returns the value clamped within the specified range.
    func clamped(within range: PartialRangeFrom<Self>) -> Self {
        max(self, range.lowerBound)
    }

    /// Returns the value clamped within the specified range.
    func clamped(within range: PartialRangeThrough<Self>) -> Self {
        min(self, range.upperBound)
    }

    /// Returns the value clamped to the specified upper bound.
    func clamped(upTo upperBound: Self) -> Self {
        min(self, upperBound)
    }

    /// Returns the value clamped to the specified lower bound.
    func clamped(downTo lowerBound: Self) -> Self {
        max(self, lowerBound)
    }
}
