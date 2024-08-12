//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Alexis on 08/08/24.
//

import SwiftUI

// You cannot change a struct, it's inmutable
struct ContentView: View {
    // At State allows to change the state of the property
    @State var showExchangeInfo : Bool = false
    @State var leftAmount : String = ""
    @State var rightAmount : String = ""
    
    var body: some View {
        ZStack {
            // Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // Pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Currency conversion section
                HStack {
                    // Left conversion section
                    VStack {
                        //Currency
                        HStack {
                            // Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)

                        
                        // Textfield
                        TextField("Amount", text: $leftAmount)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    // Right conversion section
                    VStack {
                        //Currency
                        HStack {
                            // Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        //Textfield
                        TextField("Amount", text: $rightAmount)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
                .background(.black .opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                // Info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle();
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                }
            }
            // .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
