//
//  Created by Daniel Inoa on 3/9/23.
//

public extension Result {

    @discardableResult
    func ifSuccess(_ callback: (Success) -> Void) -> Result {
        guard case .success(let value) = self else { return self }
        callback(value)
        return self
    }
}

public extension Result where Success == Void {

    /// A void success.
    static var success: Result {
        .success(())
    }

    @discardableResult
    func ifVoidSuccess(_ closure: () -> Void) -> Self {
        guard case .success = self else { return self }
        closure()
        return self
    }
}
