//
//  ContentView.swift
//  Umrechner
//
//  Created by Rolf Füßner on 18.03.26.
//
// --------------------------------------------
// APP die Unterstützen kann: KUNISWY

// https://www.youtube.com/watch?v=XQN9InGR_o8
// Zeit: 2:35
// Aktuell Funktionen
// --------------------------------------------

import SwiftUI

struct ContentView: View {
    @State var anzahl: Int = 0
    var body: some View {
        VStack(spacing: 10){
            Text("Anzahl: \(anzahl)")
            Button("Hochzählen"){
                anzahl += 1
            }
            
            // Test
        }

        
        
    }
}

#Preview {
    ContentView()
}
