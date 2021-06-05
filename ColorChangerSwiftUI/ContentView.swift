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
            Color(.orange)
                .ignoresSafeArea()
            VStack {
                Window(color: Color(
                    red: redSliderValue / 255,
                    green: greenSliderValue / 255,
                    blue: blueSliderValue / 255
                ))
                
                ColorTuner(value: $redSliderValue)
                ColorTuner(value: $greenSliderValue)
                ColorTuner(value: $blueSliderValue)
                
                Spacer()
            }
        }
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
                .foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
            TextField("", value: $value, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 50)
        }
        .padding()
        
    }
}
