//
//  WeatherModel.swift
//  Clima
//
//  Created by Luke on 6/2/22.
//  Copyright © 2022 Root Down DIgital. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    var isDay: Bool
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    //Messy switch cases, but faster than 'if' logic. Use conditionName for search,
    //weatherID used when locationServices processes lat/lon

    var conditionName: String {
        switch isDay {
        case true:
            switch conditionId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
            }
        case false:
            switch conditionId {
            case 200...232:
                return "cloud.moon.bolt"
            case 300...321:
                return "cloud.moon.rain"
            case 500...531:
                return "cloud.moon.rain.fill"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "moon.stars"
            case 801...804:
                return "cloud.moon.bolt"
            default:
                return "cloud.moon"
            }
        }
        
    }
    
    func getConditionName(weatherId: Int) -> String {
        switch isDay {
        case true:
            switch weatherId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
            }
        case false:
            switch weatherId {
            case 200...232:
                return "cloud.moon.bolt"
            case 300...321:
                return "cloud.moon.rain"
            case 500...531:
                return "cloud.moon.rain.fill"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "moon.stars"
            case 801...804:
                return "cloud.moon.bolt"
            default:
                return "cloud.moon"
            }
        }
    }
    
}
