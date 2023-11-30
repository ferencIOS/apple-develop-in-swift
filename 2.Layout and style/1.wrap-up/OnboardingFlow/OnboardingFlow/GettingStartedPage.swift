//
//  GettingStartedPage.swift
//  OnboardingFlow
//
//  Created by francesco scalise on 30/11/23.
//

import SwiftUI

struct GettingStartedPage: View {
    var body: some View {
        VStack {
            Text("Getting Started")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top, 50)
                .padding(.bottom)

            Text("Quick tips to make the most of MyApp")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            // Example of a quick tip
            HStack(alignment: .top, spacing: 15) {
                Image(systemName: "hand.tap.fill")
                    .font(.title)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Tip 1: Easy Navigation")
                        .fontWeight(.bold)
                    Text("Use the bottom tab to switch between features quickly.")
                }
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    GettingStartedPage()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
