//
//  Wage.swift
//  window-shopper-AM
//
//  Created by User on 11.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}


