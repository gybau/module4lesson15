//
//  Book.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import Foundation

struct Book: Identifiable, Decodable {
    var id:Int
    var title:String
    var author:String
    var isFavourite = false
    var currentPage:Int
    var rating = 1
    var content:[String]
    
}
