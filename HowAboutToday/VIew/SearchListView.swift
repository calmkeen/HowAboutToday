import SwiftUI

struct SearchList: View {
    @State var searchText = ""
    @StateObject var searchModel = list_test()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            
            NavigationView{
                List{
    //                ForEach(searchModel, id \.self){ data in
    //                    Text(data.title)
                    
                    Text(searchModel.d)
                    //}
                    
                }
                .listStyle(.plain)
                .navigationTitle("검색 리스트 페이지")
            }
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
