//
//  StoryPageView.swift
//  Book
//
//  Created by francesco scalise on 30/11/23.
//

import SwiftUI

struct StoryPageView: View {
    let chapterTitle: String
    let bodyText: String
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(chapterTitle)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 5)
            
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 100)
                Spacer()
            }
            .padding(.bottom, 100)
            
            Text(bodyText)
                .font(.body)
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StoryPageView(
        chapterTitle: "Chapter 2",
        bodyText: "The adventure continues...",
        imageName: "map.fill"
    )
}
