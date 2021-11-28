//
//  Diamond.swift
//  SetTheGame
//
//  Created by Victor Smirnov on 22.11.2021.
//

import SwiftUI

struct Dimond: Shape {
    
    
    func path(in rect: CGRect) -> Path {
        
        let offset: CGFloat = rect.width / 2
        let first = CGPoint(x: rect.minX, y: rect.midY)
        let second = CGPoint(x: rect.midX, y: rect.minY + offset)
        let third = CGPoint(x: rect.maxX, y: rect.midY)
        let fouth = CGPoint(x: rect.midX, y: rect.maxY - offset)
        
        var p = Path()
        p.move(to: first)
        p.addLine(to: second)
        p.addLine(to: third)
        p.addLine(to: fouth)
        p.addLine(to: first)
        
        return p
    }
}
