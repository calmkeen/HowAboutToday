//
//  WheatherApi.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/15.
//

import Foundation
import UIKit
import Combine
import SwiftUI
import CoreLocation


protocol wheatherDelegate {
    func uploadWheatherManger(_ WheatherAPIManger: WheatherAPIManger, wheather: WheatherInfo)
    func didfailwithError(error: Error)
}
struct WheatherAPIManger {
    let API = "https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=hourly,daily&units=metric&appid=key"
    
    var delegate: wheatherDelegate?
    
    func fetchWeather(timezone: String){
        let urlString : String  = "\(API)&timezone\(timezone)"
        performanceRequest(with: urlString)
    }
    
    //    func fetchWeather(cityName: String) {
    //        let urlString = "\(API)&q =\(cityName)"
    //        performanceRequest(with: urlString)
    //    }
    struct Location: Codable {
        var lat : Float
        var lon : Float
    }
    
    func performanceRequest(with urlstring: String){
        if let url = URL(string: urlstring){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    self.delegate?.didfailwithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.uploadWheatherManger(self, wheather: weather)
                        //self.parseJSON(Weather: safeData)
                        
                    }
                    
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ Weather: Data)-> WheatherInfo? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: Weather)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WheatherInfo(temp: temp, conditionId: id, timezone: name)
            return weather
            
        } catch {
            print(error)
            return nil
        }
    }
}

//extension URL{
//// ?????? ???????????? ?????? ?????? ????????????
//func urlWith(city: String) -> URL? {
//     return URL(string: "\(API)&timezone=\(timezone)")
// }
//
//// ?????? ????????? ?????? ?????? ????????????
//func urlWith(coordinate : CLLocationCoordinate2D) -> URL? {
//       let urlString = "\(API)&lat=\(coordinate.latitude)&lon=\(coordinate.longitude)"
//       print(urlString)
//       return URL(string: urlString)
//   }
//}

    

    




//    func parseJSON(_ weatherData: Data)-> weatherModel? {
//        let decoder = JSONDecoder()
//        do {
//            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
//            let id = decodedData.weather[0].id
//            let temp = decodedData.main.temp
//            let name = decodedData.name
//
//            let weather = weatherModel(conditionId: id, cityName: name, tempature: temp)
//            return weather
//
//        } catch{
//            delegate?.didfailwithError(error: error)
//            return nil
//        }
//    }

//    func handle(data: Data?, response: URLResponse?, error: Error?)-> Void {
//            if error != nil {
//                print(error!)
//                return
//            }
//
//            // ????????? ???????????? ???????????? if let ???????????? ????????? data(????????? ?????????)??? ????????? ?????? ??????.
//            // data??? ???????????? ?????? ????????? ??? ??????.
//            if let safeData = data {
//                // data??? ???????????? ???????????? ??????
//                // ???????????? data??? .utf8 ????????? ???????????? String ?????? ??????
//                let dataString = String(data: safeData, encoding: .utf8)
//                print(dataString!)
//            }
//        }


//struct currentData: Codable {
//    var temp: Float = image
//    var feels_like : Float = feels_like
//}





