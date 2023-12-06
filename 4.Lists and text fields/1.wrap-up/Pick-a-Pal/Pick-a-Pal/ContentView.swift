//
//  ContentView.swift
//  Pick-a-Pal
//
//  Created by f s on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = []
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    @State private var savedNames: [String] = UserDefaults.standard.stringArray(forKey: "SavedNames") ?? []
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                Image(systemName: "person.3.sequence.fill")
                    .foregroundStyle(.tint)
                    .symbolRenderingMode(.hierarchical)
                
                Text("Pick-a-Pal")
            }
            .font(.title)
            .bold()
            
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    let trimmedName = nameToAdd.trimmingCharacters(in: .whitespacesAndNewlines)
                    if !trimmedName.isEmpty && !names.contains(trimmedName) {
                        names.append(trimmedName)
                    }
                    nameToAdd = ""
                }
            
            Toggle("Remove picked names", isOn: $shouldRemovePickedName)
            
            Button {
                if names.count > 0 {
                    pickedName = names.randomElement()!
                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == pickedName)
                        }
                    }
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            HStack {
                Button("Save List") {
                    UserDefaults.standard.set(names, forKey: "SavedNames")
                }
                .buttonStyle(.bordered)
                
                Button("Load List") {
                    if let loadedNames = UserDefaults.standard.stringArray(forKey: "SavedNames") {
                        names = loadedNames
                    }
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
