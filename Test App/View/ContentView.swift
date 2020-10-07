//
//  ContentView.swift
//  Test App
//
//  Created by Admin on 10/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home(selected: products[0])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
