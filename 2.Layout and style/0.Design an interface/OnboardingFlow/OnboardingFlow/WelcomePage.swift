//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by f s on 30/11/23.
//

import SwiftUI

/*
 SECTION 1

struct WelcomePage: View {
    var body: some View {
        Text("Welcome to MyApp")
            .font(.title)
            .fontWeight(.semibold)
        // OR
//            .fontWidth(.expanded)
        // OR
//            .fontDesign(.rounded)
    }
}
 */

/*
 SECTION 3
 
struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.tint)
                .frame(width: 150, height: 150)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
                .border(.black, width: 1.5)
            
            Text("Description text")
                .font(.title2)
                .multilineTextAlignment(.center)
                .border(.black, width: 1.5)
        }
        .border(.orange, width: 1.5)
        .padding()
        .border(.purple, width: 1.5)
    }
}

*/

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.tint)
                .frame(width: 150, height: 150)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to MyApp")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Description text")
                .font(.title2)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
