//
//  ContentView.swift
//  Umrechner
//
//  Created by Rolf Füßner on 18.03.26.
//
// --------------------------------------------
// APP die Unterstützen kann: KUNISWY

// https://www.youtube.com/watch?v=XQN9InGR_o8
// Zeit: 3:14
// Aktuell Funktionen
// --------------------------------------------

import SwiftUI

struct ContentView: View {

    @State var kilometer: Double = 1.0
    let kilometerInMeilenFaktor: Double = 0.621371
    
    var body: some View {
        
        VStack{
            Slider(value: $kilometer, in: 0...100)
                .padding(.horizontal, 100)
            // Text("Kilometer: " + (String(format: "%.3f", kilometer).replacingOccurrences(of: ".", with: ",")))
            
            // Text("Kilometer: " + doubleToString(value: kilometer))
            Text("Kilometer: " + doubleToString(kilometer))
            Text("In Meilen: " + doubleToString(kilometer * kilometerInMeilenFaktor))
        }

        
        
    }
    // den "_ value" mache ich aus dem grund, damit ich beim aufruf das wort value nicht mitgeben muss
    // siehe oben beim aufruf
    func doubleToString(_ value: Double) -> String {
        let text = String(format: "%.3f", value)
        return text.replacingOccurrences(of: ".", with: ",")
        
    }
}

#Preview {
    ContentView()
}
