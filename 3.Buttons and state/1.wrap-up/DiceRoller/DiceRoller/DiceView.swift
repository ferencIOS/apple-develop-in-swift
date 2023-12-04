//
//  DiceView.swift
//  DiceRoller
//
//  Created by f s on 04/12/23.
//

import SwiftUI

/*
 All apps have data, or state, that changes over time. When an app changes state, it may need to update its interface. However, SwiftUI doesn’t monitor every property in an app by default.
 
 */

struct DiceView: View {
    @State private var numberOfPips: Int = 1

    var body: some View {
        VStack {
            // The dice image is now wrapped in a Button
            Button(action: {
                withAnimation {
                    numberOfPips = Int.random(in: 1...6)
                }
            }) {
                Image(systemName: "die.face.\(numberOfPips).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black, .white)
            }
            .buttonStyle(.plain) // Plain button style to keep the image appearance
        }
    }
}

#Preview {
    DiceView()
}
