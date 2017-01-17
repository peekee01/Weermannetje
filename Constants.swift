//
//  Constants.swift
//  Weermannetje
//
//  Created by Pieter Kuijsten on 17/01/2017.
//  Copyright © 2017 Pieter Kuijsten. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "fb44e907e66708541d26f5eb15ae540a"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-10\(LONGITUDE)123\(APP_ID)\(API_KEY)"
