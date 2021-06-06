//
//  Window.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 04.06.2021.
//

import SwiftUI

struct Window: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: 320, height: 140)
            .cornerRadius(20)
            .foregroundColor(color)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
            )
            .shadow(color: color, radius: 30)
    }
}

struct Window_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            Window(color: .pink)
                
        }
        
    }
}
