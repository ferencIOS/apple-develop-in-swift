//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            
            // First row of words
            HStack(spacing: 10) {
                Text("Creative")
                    .padding()
                    .background(Color.red)
                Text("Curious")
                    .padding()
                    .background(Color.green)
            }

            // Second row of words
            HStack(spacing: 10) {
                Text("Motivated")
                    .padding()
                    .background(Color.blue)
                Text("Thoughtful")
                    .padding()
                    .background(Color.orange)
            }

            // Third row of words
            HStack(spacing: 10) {
                Text("Adventurous")
                    .padding()
                    .background(Color.purple)
                Text("Empathetic")
                    .padding()
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    ContentView()
}
