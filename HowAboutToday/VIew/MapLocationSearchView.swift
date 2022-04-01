import SwiftUI
import MapKit

struct MapLocationSearch: View {
    
    @StateObject var mapModel = MapModel()
    
    var body: some View {
        Map(coordinateRegion: $mapModel.region, showsUserLocation:  true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                mapModel.CheckLocationEnAble()
        }
    }
}

struct MapLocationSearch_Previews: PreviewProvider {
    static var previews: some View {
        MapLocationSearch()
    }
}
