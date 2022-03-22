//
//  BookMarkList.swift
//  HowAboutToday
//
//  Created by calmkeen on 2022/03/22.
//

import SwiftUI

struct BookMarkList: View {
    @Environment(\.presentationMode) var presentationMode
    @State var bookmarklist = [MarkUp]
    var body: some View {
        // ========== x버튼
//        ZStack(alignment: .topLeading) {
//            Color.white.ignoresSafeArea()
//                .navigationBarBackButtonHidden(true)
//                .navigationBarHidden(true)
//
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Image(systemName: "xmark")
//                    .imageScale(.large)
//                    .padding()
//            })
//            .accentColor(.white)
            //여기까지
            List{
                ForEach(bookmarkList, id: \.self){ location in
                    HStack{
                        
                        Text(location.location)
                        Text(location.id)
                        Text(location.temp)
                        Text(location.icon)
                    }
                    
                }
            }
        }
        
        
    }
//}

struct BookMarkList_Previews: PreviewProvider {
    static var previews: some View {
        BookMarkList()
    }
}
