//
//  CotentViewModel.swift
//  LoadMap_CLLocation
//
//  Created by calmkeen on 2022/03/18.
//

import Foundation
import MapKit


final class MapModel: NSObject,ObservableObject,CLLocationManagerDelegate{
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 33.44, longitude: -94.04), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var locationManger : CLLocationManager?
    
    
    func CheckLocationEnAble() {
        if CLLocationManager.locationServicesEnabled(){
            locationManger = CLLocationManager()
            locationManger?.desiredAccuracy = kCLLocationAccuracyBest
            locationManger?.delegate = self
            
            
        }else {
            print("cannot access map")
        }
    }
     private func CheckAuthorization(){
        guard let locationManger = locationManger else {
            return
        }
        switch locationManger.authorizationStatus{
//ask permission
        case .notDetermined:
            locationManger.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is Restricted")
        case .denied:
            print("your Device is control our app to  cannot aceess")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManger.location!.coordinate,
                                        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        @unknown default:
            break
        }

    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        CheckAuthorization()
    }
}
