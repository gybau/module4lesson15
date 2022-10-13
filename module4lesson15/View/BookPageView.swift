//
//  BookPageView.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct BookPageView: View {
    
    @EnvironmentObject var model:BookModel
    var book:Book
    @State var currentPage = 0
    
    var body: some View {
        
            TabView(selection: $currentPage) {
                ForEach (book.content.indices, id: \.self) { index in
                    VStack(alignment: .center) {
                        Text(book.content[index])
                            .tag(index)
                        Spacer()
                        Text(String(index+1))
                            
                    }
                    
                    .padding()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
    }
}

struct BookPageView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookPageView(book: model.books[0])
    }
}
