import SwiftUI

struct SearchList: View {
    @State var searchText = ""
    @State var searchLocal = [MarkUp]
    @StateObject var searchModel = list_test()
    @Environment(\.presentationMode) var presentationMode
    let location = ["Busan","Suwan","Seoul","hwasung","Incheon"]
    //searchable
    var SearchLocall: [String] { // 1
        if searchText.isEmpty {
            return location
        } else {
            return location.filter { $0.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            
            NavigationView{
                List(SearchLocall, id: \.self) { local in
                    Text(local)
                }
                .navigationTitle("검색 리스트 페이지")
                //                ForEach(searchModel, id \.self){ data in
                //                    Text(data.title)
                //}
                .listStyle(.plain)
                
            }
//            .navigationTitle("검색 리스트 페이지")
            //검색창클릭시 x 버튼
            .searchable(text: $searchText)
            //            Button(action: {
            //                presentationMode.wrappedValue.dismiss()
            //            }, label: {
            //                Image(systemName: "xmark")
            //                    .imageScale(.large)
            //                    .padding()
            //            })
            //            .accentColor(.blue)
        }
    }
}






struct SearchList_Previews: PreviewProvider {
    static var previews: some View {
        SearchList()
    }
}
