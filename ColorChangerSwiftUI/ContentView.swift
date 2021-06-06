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
            Color(#colorLiteral(red: 0.1413033009, green: 0.1614242792, blue: 0.1951585412, alpha: 1))
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
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ColorTuner: View {
    @Binding var value: Double
    @State private var alertPresented = false
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .bold()
                .frame(width: 46)
            Slider(value: $value, in: 0...255, step: 1)
            TextField(
                "",
                value: $value,
                formatter: NumberFormatter(),
                onEditingChanged: {_ in },
                onCommit: checkNumber
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 46)
            .padding(.leading)
            .alert(isPresented: $alertPresented) {
                Alert(
                    title: Text("Wrong Format!"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
        }
        .padding()
    }
    
    private func checkNumber() {
        if value > 255 {
            alertPresented.toggle()
            value = 0
        }
    }
}
