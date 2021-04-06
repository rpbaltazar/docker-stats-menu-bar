//
//  ContentView.swift
//  docker-stats
//
//  Created by Perx on 6/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!").padding()
            Button("Ok", action: {
            }).padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
