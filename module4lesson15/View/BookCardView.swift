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
                            HStack {
                                Text(book.title)
                                    .font(Font.custom("Avenir Heavy", size: 25))
                                Spacer()
                                if book.isFavourite {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 35)
                                        .foregroundColor(.yellow)
                                }
                                    
                            }
                            Text(book.author)
                                .font(Font.custom("Avenir Next Italic", size: 20))
                            Image("cover\(book.id)")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            VStack(alignment: .leading) {
                                Text("Your rating:")
                                    .font(Font.custom("Avenir", size: 20))
                                    .padding(.top)
                                HStack {
                                    if book.rating != 0 {
                                        ForEach (1..<book.rating+1, id: \.self) { r in
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 35)
                                                .foregroundColor(.yellow)
                                            
                                        }
                                        ForEach (1..<6-book.rating, id: \.self) { r in
                                            Image(systemName: "star")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 35)
                                                .foregroundColor(.yellow)
                                        }
                                    } else {
                                        
                                        ForEach (1..<6) { _ in
                                            Image(systemName: "star")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 35)
                                                .foregroundColor(.yellow)
                                        }
                                    }
                                    
                                }
                            }
                            
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
