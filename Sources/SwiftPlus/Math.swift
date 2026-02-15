//
//  Created by Daniel Inoa on 10/12/23.
//

public enum Math {

    /// Returns the specified base raised to the power of the specified exponent.
    /// - note: https://en.wikipedia.org/wiki/Exponentiation_by_squaring
    public static func exponentiate(base: Double, exponent: Int) -> Double {
        if exponent < 0 {
            1 / exponentiate(base: base, exponent: -exponent)
        } else if exponent == 0 {
            1
        } else if exponent.isEven {
            exponentiate(base: base * base, exponent: exponent / 2)
        } else {
            base * exponentiate(base: base, exponent: exponent - 1)
        }
    }

    // MARK: - Scaling

    /// Returns the displacement value for the proportion within the specified range.
    /// - Example
    /// ```
    /// let displacement = interpolate(proportion: 0.7, from: 10, to: 20)
    /// displacement // 17
    /// ```
    /// - Note: This is also known as Linear Interpolation or Lerp.
    public static func interpolate(proportion: Double, from start: Double, to end: Double) -> Double {
        let distance = end - start
        let displacement = distance * proportion
        return displacement + start
    }

    /// Returns the proportion of the provided value within the specified range. In other words, it returns how much
    /// `value` has traveled from lower-bound towards upper-bound, expressed as a proportion of the total distance.
    /// - Example
    /// ```
    /// let displacement: Double = 13
    /// proportion(of: displacement, from: 10, to: 20) // 0.3
    /// ```
    /// - Note: This is also known as Inverse Linear Interpolation or Inverse Lerp.
    public static func proportion(of value: Double, from start: Double, to end: Double) -> Double {
        let distance = end - start
        guard distance != 0 else { return 0 }
        let displacement = value - start
        return displacement / distance
    }

    /// Returns a value in the source range scaled to the destination range.
    /// - Example
    /// ```
    /// let value: Double = 0.5
    /// scale(value, sourceRangeStart: 0, sourceRangeEnd: 1, destinationRangeStart: 10, destinationRangeEnd: 20) // 15
    /// ```
    /// - Note: This is also known as a "mapping function".
    public static func scale(
        _ value: Double,
        sourceRangeStart: Double,
        sourceRangeEnd: Double,
        destinationRangeStart: Double,
        destinationRangeEnd: Double
    ) -> Double {
        guard sourceRangeStart != sourceRangeEnd else {
            let destinationRangeCenter = (destinationRangeEnd + destinationRangeStart) / 2
            return destinationRangeCenter
        }
        let sourceRangeDisplacementProportion = proportion(of: value, from: sourceRangeStart, to: sourceRangeEnd)
        return interpolate(
            proportion: sourceRangeDisplacementProportion, from: destinationRangeStart, to: destinationRangeEnd
        )
    }

    /// Returns a value in the source range scaled to the destination range.
    /// - Example
    /// ```
    /// let value: Double = 0.5
    /// scale(value, from: 0...1, to: 10...20) // 15
    /// ```
    /// - Note: This is also known as a "mapping function".
    public static func scale(
        _ value: Double, from sourceRange: ClosedRange<Double>, to destinationRange: ClosedRange<Double>
    ) -> Double {
        scale(value,
              sourceRangeStart: sourceRange.lowerBound,
              sourceRangeEnd: sourceRange.upperBound,
              destinationRangeStart: destinationRange.lowerBound,
              destinationRangeEnd: destinationRange.upperBound)
    }
}
