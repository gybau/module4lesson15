//
//  DataService.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import Foundation

class DataService {
    static func getData() -> [Book] {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let bookData = try decoder.decode([Book].self, from: data)
                return bookData
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        

        
        
        return [Book]()
    }
    
}
