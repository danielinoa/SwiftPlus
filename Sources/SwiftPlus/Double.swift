//
//  Created by Daniel Inoa on 10/11/23.
//

public extension Double {

    // MARK: - Exponentiation

    /// Returns the base raised to the power of the specified exponent.
    static func ** (base: Double, exponent: Int) -> Double {
        Math.exponentiate(base: base, exponent: exponent)
    }

    /// Raises the base to the power of the specified exponent, and assigns it to the base.
    static func **= (base: inout Double, exponent: Int) {
        base = base ** exponent
    }

    // MARK: - Rounding

    /// Returns a number rounded to the specified number of decimal places.
    ///
    /// Example:
    /// - `3.141592` rounded to 2 decimal places returns `3.14`
    /// - `0.499` rounded to 3 decimal places returns `0.499`
    /// - `0.499` rounded to 2 decimal places returns `0.50`
    func rounded(fractionalDigits: Int) -> Self {
        let multiplier: Double = 10 ** fractionalDigits
        return (self * multiplier).rounded() / multiplier
    }
}
