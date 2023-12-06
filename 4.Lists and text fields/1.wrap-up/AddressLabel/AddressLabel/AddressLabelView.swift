//
//  AddressLabelView.swift
//  AddressLabel
//
//  Created by f s on 06/12/23.
//

import SwiftUI

struct AddressLabelView: View {
    @State private var name = ""
    @State private var street = ""
    @State private var city = ""
    @State private var state = ""
    @State private var country = ""
    @State private var postalCode = ""

    var formattedAddress: String {
        """
        \(name)
        \(street)
        \(city), \(state) \(postalCode)
        \(country)
        """
    }

    var body: some View {
        VStack {
            Text(formattedAddress)
                .font(.title)
                .foregroundColor(.blue)
                .padding()
            
            Form {
                TextField("Name", text: $name)
                TextField("Street", text: $street)
                TextField("City", text: $city)
                TextField("State", text: $state)
                TextField("Country", text: $country)
                TextField("Postal Code", text: $postalCode)
            }
            .autocorrectionDisabled()
            .font(.body)
        }
    }
}

#Preview {
    AddressLabelView()
}
