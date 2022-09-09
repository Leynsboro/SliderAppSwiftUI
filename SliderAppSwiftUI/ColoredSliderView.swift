//
//  ColoredSliderView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 08.09.2022.
//

import SwiftUI

struct ColoredSliderView: View {
    @Binding var value: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorValueTextView(value: value)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { sliderValue in
                    textValue = "\(lround(sliderValue))"
                }
            
            ColorValueTFView(textValue: $textValue, value: $value)
        }
        .onAppear {
            textValue = "\(lround(value))"
        }
        
    }
}

struct ColoredSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            ColoredSliderView(value: .constant(15), color: .red)
        }
        
    }
}
