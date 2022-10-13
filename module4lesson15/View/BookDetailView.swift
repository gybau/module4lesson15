//
//  BookDetailView.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct BookDetailView: View {
    
    
    @EnvironmentObject var model:BookModel
    @State var selectedRating = 2
    
    var book:Book
    
    var body: some View {
        VStack {
            NavigationLink {
                BookPageView(book: book)
            } label: {
                VStack {
                    Text("Read now!")
                        .font(Font.custom("Avenir Heavy", size: 25))
                        .padding()
                        .foregroundColor(.black)
                    Image("cover\(book.id)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                }
            }

            
            
            Text("Mark for later:")
                .padding(.top)
                .font(Font.custom("Avenir", size: 20))
            
            Button(action: { model.updateFavourite(forId: book.id) }) {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 28, height: 28)
                    .foregroundColor(.yellow)
            }
            
            Text("Rate \(book.title)")
                .padding()
                .font(Font.custom("Avenir", size: 20))
            
            Picker("", selection: $selectedRating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: 250)
            .onChange(of: selectedRating) { value in
                model.updateRating(forId: book.id, rating: selectedRating)
            }
            .font(Font.custom("Avenir", size: 20))
            
                
                
            
        }.onAppear { selectedRating = book.rating }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookDetailView(book: model.books[1])
    }
}
