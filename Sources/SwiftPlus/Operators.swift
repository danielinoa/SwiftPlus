//
//  Created by Daniel Inoa on 10/16/23.
//

precedencegroup ExponentiativePrecedence {
    associativity: right
    higherThan: MultiplicationPrecedence
}

infix operator ** : ExponentiativePrecedence
