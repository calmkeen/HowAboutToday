//
//  WeatherViewDetail.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/17.
//

import SwiftUI

struct WeatherViewDetail: View {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var locationViewModel = LocationViewModel()
    @State private var showNew = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                VStack{
                    Text("title")
                    Text("날씨 아이콘")
                    Text("온도")
                }
                    Spacer()
                HStack{
                    Text("1~3")
                    Text("3~6")
                    Text("6~9")
                }
                    Spacer()
                    VStack{
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                        Text("이후10일 날씨1")
                    }
                    Spacer()
                }
                .background(
                       NavigationLink(destination: MapLocationSearch(), isActive: $showNew) {
                         EmptyView()
                       }
                   )
                .navigationTitle("일단 네비게이션 구분")
                .toolbar{
                    ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarLeading){
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "chevron.backward")
                        })
                    }
                }
                .toolbar{
                    ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing){
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "bookmark")
                        })

                    }
                }
                .toolbar{
                    ToolbarItemGroup(placement: ToolbarItemPlacement.bottomBar){
                        
                        Button(action: {
                            self.showNew = true
                        }, label: {
                            Image(systemName: "map")
                        })
                        Button(action: {
                            
                        }, label: {
                            Image(systemName:"list.star")
                        })

                    }
                }
            }

            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        //navigationEnd
        
    }
}

struct WeatherViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeatherViewDetail()
    }
}
