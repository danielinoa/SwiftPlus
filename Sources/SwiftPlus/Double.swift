//
//  Created by Daniel Inoa on 10/11/23.
//

public extension Double {

    /// Returns the value, within the specified range, corresponding to the proportion denoted by `self`.
    /// - Example
    /// ```
    /// let proportion: Double = 0.7
    /// let displacement = proportion.interpolated(from: 10, to: 20)
    /// displacement // 17
    /// ```
    /// - Note: This is also known as Linear Interpolation or Lerp.
    func interpolated(from start: Double, to end: Double) -> Double {
        let distance = end - start
        let proportion = distance * self
        return proportion + start
    }

    /// Returns the displacement proportion of `self` within the specified range. In other words, it returns how much
    /// `self` has traveled from lower-bound towards upper-bound, expressed as a proportion of the total distance.
    /// - Example
    /// ```
    /// let displacement: Double = 13
    /// let proportion = displacement.proportioned(from: 10, to: 20)
    /// proportion // 0.3
    /// ```
    /// - Note: This is also known as Inverse Linear Interpolation or Inverse Lerp.
    func proportioned(from start: Double, to end: Double) -> Double {
        let distance = end - start
        let displacement = self - start
        return displacement / distance
    }

    /// Returns a value in the source range scaled to the destination range.
    /// - Example
    /// ```
    /// let value: Double = 0.5
    /// value.scaled(sourceRangeStart: 0, sourceRangeEnd: 1, destinationRangeStart: 10, destinationRangeEnd: 20) // 15
    /// ```
    /// - Note: This is also known as a "mapping function".
    func scaled(
        sourceRangeStart: Double,
        sourceRangeEnd: Double,
        destinationRangeStart: Double,
        destinationRangeEnd: Double
    ) -> Double {
        guard sourceRangeStart != sourceRangeEnd else {
            let destinationRangeCenter = (destinationRangeEnd + destinationRangeStart) / 2
            return destinationRangeCenter
        }
        let sourceRangeDisplacementRatio = self.proportioned(from: sourceRangeStart, to: sourceRangeEnd)
        return sourceRangeDisplacementRatio.interpolated(from: destinationRangeStart, to: destinationRangeEnd)
    }

    /// Returns a value in the source range scaled to the destination range.
    /// - Example
    /// ```
    /// let value: Double = 0.5
    /// value.scaled(from: 0...1, to: 10...20) // 15
    /// ```
    /// - Note: This is also known as a "mapping function".
    func scaled(from sourceRange: ClosedRange<Double>, to destinationRange: ClosedRange<Double>) -> Double {
        self.scaled(sourceRangeStart: sourceRange.lowerBound,
                    sourceRangeEnd: sourceRange.upperBound,
                    destinationRangeStart: destinationRange.lowerBound,
                    destinationRangeEnd: destinationRange.upperBound)
    }
}
