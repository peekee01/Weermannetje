//
//  CurrentWeather.swift
//  Weermannetje
//
//  Created by Pieter Kuijsten on 17/01/2017.
//  Copyright © 2017 Pieter Kuijsten. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: String!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "\(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: String {
        if _currentTemp == nil {
            _currentTemp = ""
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
 
        let currentWeatherURL = URL(string:CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value  as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToCelsius = Double(round(currentTemperature - 273.15))
                        self._currentTemp = "\(kelvinToCelsius) ℃"
                    }
                }
                
            }
                    completed()
        }
    }
}
