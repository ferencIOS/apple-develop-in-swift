//
//  BookCoverView.swift
//  Book
//
//  Created by francesco scalise on 30/11/23.
//

import SwiftUI

struct BookCoverView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Title of the Book")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("by Author Name")
                    .font(.title2)
                    .padding(.top, 2)
                
                Spacer()

                Image(systemName: "book.closed.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .foregroundColor(.accentColor)

                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    BookCoverView()
}
