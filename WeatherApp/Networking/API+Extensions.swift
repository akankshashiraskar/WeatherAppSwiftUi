//
//  API+Extensions.swift
//  WeatherApp
//
//  Created by Akanksha Shiraskar on 09/04/23.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFoe(lat: Double, lon: DOuble) -> String {
        return "\(baseURLString)oncall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
