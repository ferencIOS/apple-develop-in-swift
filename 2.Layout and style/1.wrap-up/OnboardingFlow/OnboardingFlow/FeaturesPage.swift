//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30.0) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 100.0)
                .padding(.bottom)
            
            FeatureCard(
                iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description about a feature paired with the image on the left.", 
                additionalInfo: "Caption"
            )
            FeatureCard(
                iconName: "quote.bubble.fill",
                description: "Short summary",
                additionalInfo: "Caption"
            )
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
