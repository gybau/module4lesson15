//
//  BookModel.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books:[Book]
    
    init(){
        books = DataService.getData()
    }
}
