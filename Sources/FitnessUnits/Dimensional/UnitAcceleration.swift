//
//  UnitAcceleration.swift
//  FitnessUnits
//
//  Created by Kevin Hoogheem on 4/1/17.
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
public extension UnitAcceleration {

    private struct Symbol {
        static let feetPerSecondSquared = "ft/s²"
        static let gal                  = "gal"
    }

    private struct Coefficient {
        static let feetPerSecondSquared = 0.304800
        static let gal                  = 0.01

    }

    /// Unit of Acceleration in Feet Per Second Squared
    class var feetPerSecondSquared: UnitAcceleration {
        return UnitAcceleration(symbol: Symbol.feetPerSecondSquared,
                                converter: UnitConverterLinear(coefficient: Coefficient.feetPerSecondSquared))
    }

    /// Unit of Acceleration in Galileo
    class var galileo: UnitAcceleration {
        return UnitAcceleration(symbol: Symbol.gal,
                                converter: UnitConverterLinear(coefficient: Coefficient.gal))
    }
}
