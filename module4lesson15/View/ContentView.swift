//
//  ContentView.swift
//  module4lesson15
//
//  Created by Michał Ganiebny on 13/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }.environmentObject(BookModel())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
