//
//  ColorSlider.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 09.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            SliderValueLabel(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: sliderValue) { isOnFocus in
                    textValue = "\(lround(isOnFocus))"
                }
            SliderValueTF(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.purple)
            ColorSlider(sliderValue: .constant(100), color: .purple)
        }
    }
}
