//
//  ContentView.swift
//  ActivityRings
//
//  Created by Fito Toledano on 30/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.7
    
    var body: some View {
        VStack {
            ActivityRing(progress: progress)
                .frame(width: 200, height: 200)
            
            Slider(value: $progress, in: 0...1, step: 0.01)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
