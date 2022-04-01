import SwiftUI

struct BookMarkList: View {
    @Environment(\.presentationMode) var presentationMode
    @State var bookmarklist = [MarkUp]
    var body: some View {
        NavigationView{
            List{
                ForEach(bookmarkList, id: \.self){ location in
                    HStack{
                        
                        Text(location.location)
                        Text(location.id)
                        Text(location.temp)
                        Text(location.icon)
                    }
                    
                }
                .onDelete(perform: removeRows)
            }
            .navigationBarItems(leading: EditButton())
        }
        
    }
}
func removeRows(at offsets: IndexSet) {
    bookmarkList.remove(atOffsets: offsets)
}


struct BookMarkList_Previews: PreviewProvider {
    static var previews: some View {
        BookMarkList()
    }
}
