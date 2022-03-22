//
//  SearchModel.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/18.
//

import Foundation
import SwiftUI

class list_test: NSObject,ObservableObject{
    var a : String = "test a"
    var b : String = "test b"
    var c : String = "test c"
    var d : String = "test d"
}

    var bookmarkList: [bookmark] = [
        bookmark(location: "hwasung", id: "MyHome", icon: "cloud", temp: "12"),
        bookmark(location: "seoul", id: "FriendHome", icon: "cloud.fit", temp: "13"),
        bookmark(location: "busan", id: "Company", icon: "cloud", temp: "13"),
        bookmark(location: "suwon", id: "Fav_Cafe", icon: "sun", temp: "16"),
        bookmark(location: "가로수 길", id: "apple_careService", icon: "snow", temp: "9")
    ]

var MarkUp = bookmarkList

