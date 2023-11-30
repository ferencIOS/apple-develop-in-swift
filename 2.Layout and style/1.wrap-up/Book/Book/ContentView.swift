//
//  ContentView.swift
//  Book
//
//  Created by francesco scalise on 30/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let gradientColors: [Color] = [
        .gradientTop,
        .gradientMiddle,
        .gradientBottom
    ]
    
    var body: some View {
        VStack {
            TabView {
                
                BookCoverView()
                
                StoryPageView(chapterTitle: "Chapter 1", bodyText: "Once upon a time...", imageName: "star.fill")
                
                StoryPageView(chapterTitle: "Chapter 2", bodyText: "The adventure continues...", imageName: "map.fill")
            }
            .tabViewStyle(.page)
            .foregroundStyle(.tint)
        }
    }
}

#Preview {
    ContentView()
}
