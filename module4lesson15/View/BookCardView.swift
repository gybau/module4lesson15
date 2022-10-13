//
//  BookCardView.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct BookCardView: View {
    
    var book:Book
    
    var body: some View {
        VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                        VStack(alignment: .leading) {
                            Text(book.title)
                                .font(.largeTitle)
                            Text(book.author)
                                .font(.callout)
                            Image("cover\(book.id)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }.padding()
                    }
                    .cornerRadius(10)
                    .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.5), radius: 10, x: -5, y: 5)
                    
        }
    }
}

struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookCardView(book: model.books[0])
    }
}
