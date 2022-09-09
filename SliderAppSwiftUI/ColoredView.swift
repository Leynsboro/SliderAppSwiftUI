//
//  ColoredView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 07.09.2022.
//

import SwiftUI

struct ColoredView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 5))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(red: 100 / 255, green: 150 / 255, blue: 130 / 255)
    }
}
