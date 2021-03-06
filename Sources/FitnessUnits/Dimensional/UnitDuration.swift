//
//  UnitDuration.swift
//  FitnessUnits
//
//  Created by Kevin Hoogheem on 4/22/18.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

@available(swift 3.1)
@available(iOS 10.0, tvOS 10.0, watchOS 3.0, OSX 10.12, *)
public extension UnitDuration { /// Base unit - seconds
    // Base already has seconds/minutes/hours

    private struct Symbol {
        static let microsecond  = "μs"
        static let millisecond  = "ms"
        static let year         = "year"
        static let decade       = "decade"
    }

    private struct Coefficient {
        static let microsecond  = 1e-6
        static let millisecond  = 0.001
        static let year         = 3.154e+7
        static let decade       = 3.154e+8
    }

    /// Duration Microsecond
    class var microsecond: UnitDuration {
        return UnitDuration(symbol: Symbol.microsecond, converter: UnitConverterLinear(coefficient: Coefficient.microsecond))
    }

    /// Duration Millisecond
    class var millisecond: UnitDuration {
        return UnitDuration(symbol: Symbol.millisecond, converter: UnitConverterLinear(coefficient: Coefficient.millisecond))
    }

    /// Duration Year
    class var year: UnitDuration {
        return UnitDuration(symbol: Symbol.year, converter: UnitConverterLinear(coefficient: Coefficient.year))
    }

    /// Duration Decade
    class var decade: UnitDuration {
        return UnitDuration(symbol: Symbol.decade, converter: UnitConverterLinear(coefficient: Coefficient.decade))
    }
}
