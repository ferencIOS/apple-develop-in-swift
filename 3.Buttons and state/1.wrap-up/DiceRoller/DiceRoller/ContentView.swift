//
//  ContentView.swift
//  DiceRoller
//
//  Created by f s on 04/12/23.
//

import SwiftUI

/*
 In this updated version:

 - The "Roll" button in DiceView is now a capsule-shaped button that encloses the dice image. Tapping this button will randomize the dice.
 - The "Remove Dice" and "Add Dice" buttons in ContentView use hierarchical symbol rendering for their icons.
 - DiceView has been modified so that tapping on the dice image itself triggers the roll action, removing the need for a separate "Roll" button beneath it.
 */

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) { _ in
                    DiceView()
                        .foregroundStyle(.white)
                }
            }
            
            HStack {
                Button(action: {
                    numberOfDice -= 1
                }) {
                    Label("Remove Dice", systemImage: "minus.circle.fill")
                }
                .disabled(numberOfDice == 1)
                .symbolRenderingMode(.hierarchical) // Hierarchical rendering for the button symbol
                
                Button(action: {
                    numberOfDice += 1
                }) {
                    Label("Add Dice", systemImage: "plus.circle.fill")
                }
                .disabled(numberOfDice == 5)
                .symbolRenderingMode(.hierarchical) // Hierarchical rendering for the button symbol
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}


#Preview {
    ContentView()
}
