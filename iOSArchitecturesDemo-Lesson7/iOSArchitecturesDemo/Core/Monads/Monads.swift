//
//  Monads.swift
//  iOSArchitecturesDemo
//
//  Created by Alexander Obotnin on 28.12.2022.
//  Copyright © 2022 Alexander Obotnin. All rights reserved.
//

import Foundation

precedencegroup MonadicPrecedence {
    associativity: left
    higherThan: BitwiseShiftPrecedence
}

infix operator >>- : MonadicPrecedence

/// В случае если значение "a" типа T существует, то будет выполнен метод f, возвращающий тип U
/// Иначе получим nil
@inline(__always)
@discardableResult
public func >>-<T, U>(a: T?, f: (T) throws -> U?) rethrows -> U? {
    switch a {
    case .some(let x):
        return try f(x)
    case .none:
        return nil
    }
}
