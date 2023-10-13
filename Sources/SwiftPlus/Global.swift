//
//  Created by Daniel Inoa on 10/12/23.
//

/// Returns the specified base raised to the power of the specified exponent.
/// - note: https://en.wikipedia.org/wiki/Exponentiation_by_squaring
public func exponentiate(base: Double, exponent: Int) -> Double {
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
