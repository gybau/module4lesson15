//
//  BookModel.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    
    init(){
        self.books = DataService.getData()
    }
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }
    
    func updateRating(forId: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forId}) {
            books[index].rating = rating
        }
    }
    
    func updatePage(forId: Int, page: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].currentPage = page
        }
    }
}
