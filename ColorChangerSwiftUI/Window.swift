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
            .frame(width: 320, height: 120)
            .cornerRadius(20)
            .foregroundColor(color)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 3)
            )
            .shadow(color: color, radius: 10)
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
