//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by f s on 30/11/23.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    let additionalInfo: String // New info to display
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50.0)
                .padding(.trailing, 10.0)
            
            VStack(alignment: .leading) {
                Text(description)
                Divider()
                    .frame(height: 1.0)
                    .background(Color.white)
                Text(additionalInfo) // Displaying additional info
                    .font(.caption)
            }
            
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(
        iconName: "person.2.crop.square.stack.fill",
        description: "A multiline description about a feature paired with the image on the left.",
        additionalInfo: "A caption"
    )
}
