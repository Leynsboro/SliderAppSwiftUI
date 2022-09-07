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
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack(spacing: 40) {
                Spacer()
                ColoredView(color: Color(
                    red: redValue / 255,
                    green: greenValue / 255,
                    blue: blueValue / 255)
                )
                VStack {
                    ColoredSliderView(value: $redValue, color: .red)
                    ColoredSliderView(value: $greenValue, color: .green)
                    ColoredSliderView(value: $blueValue, color: .blue)
                    Spacer()
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColoredSliderView: View {
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(lround(value))").foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("0", value: $value, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
                .frame(width: 50)
                .foregroundColor(.black)
                .padding(8)
                .background()
                .clipShape(RoundedRectangle(cornerRadius: 5))
        }
    }
}



