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
    
    @StateObject var locationViewModel = LocationViewModel()
    
    @State private var name = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Text("Can i get your location Info?\(name)")
                Text("").searchable(text: $name)
                NavigationLink(destination: WeatherViewDetail()){
                    switch locationViewModel.authorizationStatus {
                    case .notDetermined:
                        AnyView(RequestLocationView())
                            .environmentObject(locationViewModel)
                    case .restricted:
                        ErrorView(errorText: "Location use is restricted.")
                    case .denied:
                        ErrorView(errorText: "The app does not have location permissions. Please enable them in settings.")
                    case .authorizedAlways, .authorizedWhenInUse:
                        TrackingView()
                            .environmentObject(locationViewModel)
                    default:
                        Text("Unexpected status")
                    }
                }
//                Button(action: {
//                    locationViewModel.requestPermission()
//                }, label: {
//                    Label("Allow tracking", systemImage: "location")
//                })
                
                
            }
            .navigationBarTitle("HowaboutToday")
            Spacer()
            
        }
}
}
    struct RequestLocationView: View {
        @EnvironmentObject var locationViewModel: LocationViewModel
        
        var body: some View {
            VStack {
                Image(systemName: "location.circle")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Button(action: {
                    print("allowing perms")
                }, label: {
                    Label("Allow tracking", systemImage: "location")
                })
                .padding(10)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                Text("We need your permission to track you.")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
        }
    }

struct ErrorView: View {
    var errorText: String
    
    var body: some View {
        VStack {
            Image(systemName: "xmark.octagon")
                    .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text(errorText)
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.red)
    }
}

struct TrackingView: View {
    @EnvironmentObject var locationViewModel: LocationViewModel
    
    var body: some View {
        Text("Thanks!")
    }
}
        

        

        //MARK: - after ios 15
        
        
        //MARK: - befor ios15
//        TextField("Search City...",text: WheatherAPIManger) {
//            if let city = TextField.text{
//                wheatherManger.fetchWeather(cityName: city)
//            }
//            TextField.text = ""
//        }



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
