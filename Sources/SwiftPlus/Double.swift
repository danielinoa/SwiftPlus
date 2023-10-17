//
//  Created by Daniel Inoa on 10/11/23.
//

public extension Double {

    /// Returns this number raised to the power of the specified exponent.
    static func ** (base: Double, exponent: Int) -> Double {
        Math.exponentiate(base: base, exponent: exponent)
    }

    // MARK: - Rounding

    /// Returns a number rounded to the specified number of decimal places.
    ///
    /// Example:
    /// - The number `3.141592` when rounded to 2 decimal places returns `3.14`
    /// - The number `0.499` when rounded to 3 decimal places returns `0.499`
    /// - The number `0.499` when rounded to 2 decimal places returns `0.50`
    func rounded(fractionalDigits: Int) -> Self {
        let multiplier: Double = 10 ** fractionalDigits
        return (self * multiplier).rounded() / multiplier
    }
}
