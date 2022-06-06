//
//  WeatherData.swift
//  Clima
//
//  Created by Luke on 6/2/22.
//  Copyright © 2022 Root Down DIgital. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
    let timezone: Double
    let sys: StationInfo
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int //id for conditions
}

struct StationInfo: Decodable {
    let sunrise: TimeInterval
    let sunset: TimeInterval
}
