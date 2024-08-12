//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Alexis on 12/08/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    var body: some View {
        ZStack(alignment: .bottom) {
            // Currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // Currency name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .foregroundStyle(.black)
        .background(.brown)
        .clipShape(.rect(cornerRadius:25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
