//
//  ContentView.swift
//  ChatPrototype
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock, knock!")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8.0))
            Text("Who's there?")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8.0))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
