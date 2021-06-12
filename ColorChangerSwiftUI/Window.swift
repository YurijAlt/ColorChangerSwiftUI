//
//  Window.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 04.06.2021.
//

import SwiftUI

struct Window: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 4)
            )
            .frame(height: 140)
            .shadow(
                color: Color(red: red / 255, green: green / 255, blue: blue / 255),
                radius: 30
            )
    }
}

struct Window_Previews: PreviewProvider {
    static var previews: some View {
        Window(red: 163, green: 87, blue: 215)
    }
}
