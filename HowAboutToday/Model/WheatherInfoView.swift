//
//  WheatherInfo.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/16.
//

import Foundation

struct WheatherInfo: Codable {
    var temp: Double
    var conditionId : Int
    var timezone: String
    
    var tempatureString: String {
        return String(format:"%.2f",temp)
    }
    
    var WeatherChange : String{
        switch conditionId {
        case 200...232 :
            return "cloud.blot.rain"
        case 300...321 :
            return "cloud.drizzle"
        case 500...531:
            return "cloud.hevayrain.fill"
        case 600...622:
            return "cloud.snow"
        case 701...770:
            return "cloud.fog"
        case 771...781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801...804:
            return "smoke"
        default:
            return "cloud.sun"
        }
    }
}
