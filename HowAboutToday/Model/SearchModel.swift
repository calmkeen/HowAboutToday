//
//  SearchModel.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/18.
//

import Foundation
import SwiftUI


 private var searchText = ""

class list_test: NSObject,ObservableObject{
//    var locationSearch = [bookmark]
//    init() {
//
//        bookmark(location:"hwasung")
//        bookmark(location:"Suwon")
//        bookmark(location:"Seoul")
//        bookmark(location:"Busan")
 
}

    var bookmarkList: [bookmark] = [
        bookmark(location: "hwasung", id: "MyHome", icon: "cloud", temp: "12"),
        bookmark(location: "seoul", id: "FriendHome", icon: "cloud.fit", temp: "13"),
        bookmark(location: "busan", id: "Company", icon: "cloud", temp: "13"),
        bookmark(location: "suwon", id: "Fav_Cafe", icon: "sun", temp: "16"),
        bookmark(location: "가로수 길", id: "apple_careService", icon: "snow", temp: "9")
    ]

var MarkUp = bookmarkList

