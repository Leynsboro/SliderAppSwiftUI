//
//  ColorValueTFView.swift
//  SliderAppSwiftUI
//
//  Created by Илья Гусаров on 08.09.2022.
//

import SwiftUI

struct ColorValueTFView: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            checkValue()
        }
        .frame(width: 50)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Please, write from 0 to 255")
        }
    }
}

struct ColorValueTFView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            ColorValueTFView(textValue: .constant("255"), value: .constant(255))
        }
        
    }
}

extension ColorValueTFView {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}
