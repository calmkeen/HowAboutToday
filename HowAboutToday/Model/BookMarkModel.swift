//
//  BookMarkModel.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/22.
//

import Foundation
import SwiftUI

struct bookmark : Hashable,Identifiable{
    var location : String
    var id : String
    var icon : String //여기는 날씨 sysname: 상속받아서 케이스별로 출력
    var temp : String
}



