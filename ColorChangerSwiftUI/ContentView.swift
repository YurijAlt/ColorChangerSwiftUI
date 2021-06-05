//
//  ContentView.swift
//  ColorChangerSwiftUI
//
//  Created by SummeR on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 200.0
    @State private var greenSliderValue = 250.0
    @State private var blueSliderValue = 300.0
    
    @State private var redColorTextField = ""
    @State private var greenColorTextField = ""
    @State private var blueColorTextField = ""
    
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
                    
                ColorTuner(value: $redSliderValue, textFieldValue: $redColorTextField)
                ColorTuner(value: $greenSliderValue, textFieldValue: $greenColorTextField)
                ColorTuner(value: $blueSliderValue, textFieldValue: $blueColorTextField)
                
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
    @Binding var textFieldValue: String
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
            
            TextField("200", text: $textFieldValue)
                .frame(width: 40)
        }
        .padding()
    }
}
