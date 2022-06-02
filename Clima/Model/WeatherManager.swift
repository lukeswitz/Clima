//
//  WeatherManager.swift
//  Clima
//
//  Created by Luke on 6/2/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    //Throwaway API Key until secure coding practices introduced
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=998342e70387b466c7105919bb960ec7&units=imperial"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest (urlString: String) {
        //1 Create URL
        if let url = URL(string: urlString) {
            
            //2 Create session
            let session = URLSession(configuration: .default)
            
            //3 Give session a task
            let task = session.dataTask(with: url) { (data, response, error ) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(weatherData: safeData)
                }
            }
            //4 Start the task
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.weather[0].description)
        } catch {
            print(error)
        }
    }
    

}
