//
//  ColoredView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 07.09.2022.
//

import SwiftUI

struct ColoredView: View {
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(color)
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.white, lineWidth: 5))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(color: .red)
    }
}
