//
//  ContentView.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct BookScrollView: View {
    
    @EnvironmentObject var model:BookModel
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVStack(alignment: .leading) {
                    Text("My library")
                        .font(Font.custom("Avenir Heavy", size: 40))
                        .padding()
                    ForEach (model.books) { b in
                        NavigationLink {
                            BookDetailView(book: b)
                        } label: {
                            BookCardView(book: b)
                        }.buttonStyle(.plain)
                            .padding()
                            

                    }
                }
                
            }//.navigationTitle("My library")
                
        }
        
    }
}

struct BookScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BookScrollView().environmentObject(BookModel())
    }
}
