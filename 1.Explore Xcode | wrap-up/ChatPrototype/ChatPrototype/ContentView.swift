//
//  ContentView.swift
//  ChatPrototype
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10.0) { // Task 4: Modified spacing to 10.0 for better visibility
            // Task 1: Added more messages to the conversation
            Text("Knock, knock!")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8.0))
                .shadow(radius: 3) // Task 3: Added shadow to this bubble
            Text("Who's there?")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8.0))
                .shadow(radius: 3) // Task 3: Added shadow to this bubble
            // Additional Messages
            Text("Cows go.")
                .padding()
                .background(Color.pink, in: RoundedRectangle(cornerRadius: 8.0)) // Task 2: New color
                .shadow(radius: 3) // Task 3: Added shadow
            Text("Cows go who?")
                .padding()
                .background(Color.orange, in: RoundedRectangle(cornerRadius: 8.0)) // Task 2: New color
                .shadow(radius: 3) // Task 3: Added shadow
            Text("No, cows go moo!")
                .padding()
                .background(Color.purple, in: RoundedRectangle(cornerRadius: 8.0)) // Task 2: New color
                .shadow(radius: 3) // Task 3: Added shadow
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
