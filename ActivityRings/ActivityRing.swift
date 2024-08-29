//
//  ActivityRing.swift
//  ActivityRings
//
//  Created by Fito Toledano on 30/08/2024.
//

import SwiftUI

struct ActivityRing: View {
    var progress: Double
    var color: Color = .red
    var backgroundColor: Color = .gray.opacity(0.3)
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(backgroundColor, lineWidth: 20)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress))
                .stroke(color, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut, value: progress)
        }
    }
}
