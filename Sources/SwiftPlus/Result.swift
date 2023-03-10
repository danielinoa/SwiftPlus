//
//  Created by Daniel Inoa on 3/9/23.
//

public extension Result where Success == Void {

    /// A void success.
    static var success: Result {
        .success(())
    }
}
