//
//  SearchList.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/18.
//

import SwiftUI

struct SearchList: View {
    @State var searchText = ""
    @StateObject var searchModel = list_test()
    var body: some View {
        NavigationView{
            List{
//                ForEach(searchModel, id \.self){ data in
//                    Text(data.title)
                    
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("검색 리스트 페이지")
        }
        //.searchable(text: $searchText)
    }


struct SearchList_Previews: PreviewProvider {
    static var previews: some View {
        SearchList()
    }
}
