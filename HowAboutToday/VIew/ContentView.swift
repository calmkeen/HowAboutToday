//
//  ContentView.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/15.
//

import SwiftUI



//@State var results = [TaskEntry]()
//var wheatherManger = WheatherAPIManger()
//var wheatherInfo = WheatherInfo()

//var wheather = Wheather()
struct ContentView: View {
    @State private var name = ""
    var body: some View {
        NavigationView{
            VStack{
                Text("df\(name)")
            }
        }
        
        .searchable(text: $name)
        

        //MARK: - after ios 15
        
        
        //MARK: - befor ios15
//        TextField("Search City...",text: WheatherAPIManger) {
//            if let city = TextField.text{
//                wheatherManger.fetchWeather(cityName: city)
//            }
//            TextField.text = ""
//        }
    }
}


//extension ContentView: wheatherDelegate{
//    func uploadWheatherManger(_ WheatherAPIManger: WheatherAPIManger, wheather: WheatherInfo) {
//        DispatchQueue.main.async {
//
//        }
//    }
//
//    func didfailwithError(error: Error) {
//        print(error)
//    }
//
//
//}
//
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
