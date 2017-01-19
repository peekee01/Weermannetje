//
//  Location.swift
//  Weermannetje
//
//  Created by Pieter Kuijsten on 18/01/2017.
//  Copyright © 2017 Pieter Kuijsten. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
