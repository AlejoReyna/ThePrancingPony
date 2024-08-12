//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Alexis on 11/08/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            // Parchement background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)

            VStack {
                // Text
                Text ("Select the currency you are starting with: ")
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<5) { _ in
                        
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                }
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)

                // Currency icos
          
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
    
}

#Preview {
    SelectCurrency()
}
