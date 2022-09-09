//
//  ContentView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 07.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.gray)
                    .ignoresSafeArea()
                VStack(spacing: 40) {
                    ColoredView(red: redValue, green: greenValue, blue: blueValue)
                    VStack {
                        ColoredSliderView(value: $redValue, color: .red)
                        ColoredSliderView(value: $greenValue, color: .green)
                        ColoredSliderView(value: $blueValue, color: .blue)
                    }
                    .frame(height: 150)
                    .focused($isInputActive)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done") {
                                isInputActive = false
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



