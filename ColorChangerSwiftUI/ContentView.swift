//
//  ContentView.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.696955204, blue: 0.9159916043, alpha: 1))
                .ignoresSafeArea()
            VStack {
                Window(color: Color(
                    red: redSliderValue / 255,
                    green: greenSliderValue / 255,
                    blue: blueSliderValue / 255
                ))
                .padding()
                
                ColorTuner(value: $redSliderValue)
                ColorTuner(value: $greenSliderValue)
                ColorTuner(value: $blueSliderValue)
                
                Spacer()
                
            }
        }
    }
    
    private func checkNumber() {
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ColorTuner: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .bold()
                .frame(width: 46)
            Slider(value: $value, in: 0...255, step: 1)
            TextField("Color", value: $value, formatter: NumberFormatter(), onEditingChanged: {_ in }, onCommit: {})
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 46)
        }
        .padding()
        
    }
}
