//
//  Created by Daniel Inoa on 3/9/23.
//

public extension Optional {

    /// Returns true if the receiver is nil.
    var isNil: Bool {
        self == nil
    }

    /// Returns true if the receiver is not nil.
    var isNotNil: Bool {
        self != nil
    }
}
