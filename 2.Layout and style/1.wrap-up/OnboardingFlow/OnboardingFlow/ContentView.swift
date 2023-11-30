//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by f s on 30/11/23.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientMiddle,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
            GettingStartedPage() // Adding the new page here
        }
        .background(Gradient(colors: gradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
