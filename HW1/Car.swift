//
//  Car.swift
//  HW1
//
//  Created by Jarae on 24/12/22.
//

import Foundation
class Car{
    var body: String
    var engine: String
    var transmission: String
    var performance_indicators: Int
    
    init(body: String, engine: String, transmission: String, performance_indicators: Int) {
        self.body = body
        self.engine = engine
        self.transmission = transmission
        self.performance_indicators = performance_indicators
    }
  
    func powerIncrease(){
        print("\(body) before increasing \(self.performance_indicators)")
        self.performance_indicators += 100
        print("\(body) after increasing \(self.performance_indicators)\n")
    }
}
