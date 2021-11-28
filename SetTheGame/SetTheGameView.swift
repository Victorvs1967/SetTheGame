//
//  ContentView.swift
//  SetTheGame
//
//  Created by Victor Smirnov on 17.11.2021.
//

import SwiftUI

struct SetTheGameView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(0..<9) { _ in
                        CardView(signCount: 3)
                            .foregroundColor(.red)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .padding()
        }
     }
    
    struct CardView: View {
        
        var signCount = 1

        var body: some View {
            GeometryReader { geometry in
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: Const.cornerRadius)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: Const.lineWidth, antialiased: true)
                    cardContent(signCount)
                        .padding(10)
                }
            }
        }
        
        private func cardContent(_ count: Int) -> some View {
            GeometryReader { geometry in
                VStack {
                    ForEach(0..<count) { _ in
                        Dimond()
                        .stroke(lineWidth: 3)
                        .scale(x: 1, y: 0.85)
                    }
                    .alignmentGuide(VerticalAlignment.center) { _ in 0 }
                }
            }

        }
    }
        
    private struct Const {
        static let cornerRadius: CGFloat = 10
        static let lineWidth: CGFloat = 3
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SetTheGameView()
    }
}
