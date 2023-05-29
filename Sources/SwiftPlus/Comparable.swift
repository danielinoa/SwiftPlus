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
        min(max(self, range.lowerBound), range.upperBound)
    }
}
