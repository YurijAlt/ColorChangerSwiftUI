//
//  SliderValueLabel.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 09.06.2021.
//

import SwiftUI

struct SliderValueLabel: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.purple
            SliderValueLabel(value: 128)
        }
    }
}
