//
//  wheatherData.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/16.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Codable {
    let temp: Double
}
struct Weather :Codable{
    let id: Int
}
