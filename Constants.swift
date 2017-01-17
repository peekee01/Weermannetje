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

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)52.3\(LONGITUDE)4.87\(APP_ID)\(API_KEY)"


let FORECAST_BASE_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?"
let FORECAST_LATITUDE = "lat="
let FORECAST_LONGITUDE = "&lon="
let FORECAST_APP_ID = "&cnt=10&mode=json&appid="
let FORECAST_API_KEY = "fb44e907e66708541d26f5eb15ae540a"

let FORECAST_URL = "\(FORECAST_BASE_URL)\(FORECAST_LATITUDE)52.3\(FORECAST_LONGITUDE)4.87\(FORECAST_APP_ID)\(FORECAST_API_KEY)"
