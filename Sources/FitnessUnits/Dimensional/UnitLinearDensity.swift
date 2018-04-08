//
//  UnitLinearDensity.swift
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

/// Units of Linear Density
@available(swift 3.1)
@available(iOS 10.0, tvOS 10.0, watchOS 3.0, OSX 10.12, *)
open class UnitLinearDensity: Dimension {

    private struct Symbol {
        static let kilogramMeter    = "kg/m"
        static let poundFoot        = "lb/ft"
    }

    private struct Coefficient {
        static let kilogramMeter    = 1.0
        static let poundFoot        = 1.48816
    }


    private init(symbol: String, coefficient: Double) {
        super.init(symbol: symbol, converter: UnitConverterLinear(coefficient: coefficient))
    }

    /// Linear Density in Kilogram Meter (kg/m)
    open class var kilogramMeter: UnitLinearDensity {
        get {
            return UnitLinearDensity(symbol: Symbol.kilogramMeter, coefficient: Coefficient.kilogramMeter)
        }
    }

    /// Linear Desnity in Pound Foot (lb/ft)
    open class var poundFoot: UnitLinearDensity {
        get {
            return UnitLinearDensity(symbol: Symbol.poundFoot, coefficient: Coefficient.poundFoot)
        }
    }

    /// Base unit for UnitLinearDensity
    ///
    /// - Returns: Base Unit
    open override class func baseUnit() -> UnitLinearDensity {
        return UnitLinearDensity.kilogramMeter
    }

    public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
    open override func encode(with aCoder: NSCoder) { super.encode(with: aCoder) }

}
