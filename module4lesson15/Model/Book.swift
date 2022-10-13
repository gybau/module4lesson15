//
//  Book.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import Foundation

class Book: Identifiable, Decodable {
    var id:Int
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var content:[String]
    
}
