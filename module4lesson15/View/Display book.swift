//
//  Display book.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct Display_book: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        VStack{
            ForEach (model.books) { book in
                Text(book.title)
            }
        }
    }
}

struct Display_book_Previews: PreviewProvider {
    static var previews: some View {
        Display_book().environmentObject(BookModel())
    }
}
