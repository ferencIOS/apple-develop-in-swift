//
//  ContentView.swift
//  ChatPrototype
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            ChatBubble(text: "Knock, knock!", backgroundColor: Color.teal)
            ChatBubble(text: "Who's there?", backgroundColor: Color.yellow)
            ChatBubble(text: "Cows go.", backgroundColor: Color.pink)
            ChatBubble(text: "Cows go who?", backgroundColor: Color.orange)
            ChatBubble(text: "No, cows go moo!", backgroundColor: Color.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ChatBubble: View {
    let text: String
    let backgroundColor: Color

    var body: some View {
        Text(text)
            .padding()
            .background(backgroundColor, in: RoundedRectangle(cornerRadius: 8.0))
            .shadow(radius: 3)
    }
}
