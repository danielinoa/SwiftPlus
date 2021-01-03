//
//  Created by Daniel Inoa on 12/29/20.
//

public typealias Factory<T> = () -> T
public typealias Closure = Factory<Void>
public typealias Map<T, U> = (T) -> U
public typealias Callback<T> = Map<T, Void>
