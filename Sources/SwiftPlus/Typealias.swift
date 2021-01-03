//
//  Created by Daniel Inoa on 12/29/20.
//

/// () -> T
public typealias Factory<T> = () -> T

/// () -> Void
public typealias Closure = Factory<Void>

/// (T) -> U
public typealias Map<T, U> = (T) -> U

/// (T) -> Void
public typealias Callback<T> = Map<T, Void>
