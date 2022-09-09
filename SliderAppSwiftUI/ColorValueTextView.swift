//
//  ColorValueTextView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 08.09.2022.
//

import SwiftUI

struct ColorValueTextView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 50)
    }
}

struct ColorValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        ColorValueTextView(value: 250)
    }
}
