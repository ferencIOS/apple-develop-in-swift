//
//  ContentView.swift
//  ChatPrototype
//
//  Created by f s on 30/11/23.
//

import SwiftUI

enum MessageAlignment {
    case left, right
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            ChatBubble(text: "Knock, knock!", backgroundColor: Color.teal, alignment: .right)
            ChatBubble(text: "Who's there?", backgroundColor: Color.yellow, alignment: .left)
            ChatBubble(text: "Cows go.", backgroundColor: Color.pink, alignment: .right)
            ChatBubble(text: "Cows go who?", backgroundColor: Color.orange, alignment: .left)
            ChatBubble(text: "No, cows go moo!", backgroundColor: Color.purple, alignment: .right)
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
    let alignment: MessageAlignment
    
    var body: some View {
        HStack {
            if alignment == .left {
                Spacer() // Pushes the bubble to the left
            }
            Text(text)
                .padding()
                .background(backgroundColor, in: RoundedRectangle(cornerRadius: 8.0))
                .shadow(radius: 3)
            if alignment == .right {
                Spacer() // Pushes the bubble to the right
            }
        }
    }
}
