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
    
    var body: some View {
        VStack{
            TabView {
                ForEach (0..<book.content.count, id: \.self) { index in
                    VStack {
                        Text(book.content[index])
                        Text(String(index+1))
                            .padding()
                    }.padding()
                }
            }.tabViewStyle(PageTabViewStyle())
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct BookPageView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookPageView(book: model.books[0])
    }
}
