//
//  PathAnimation.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct PathAnimation: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine * 3, y: nearLine))
                path.addLine(to: CGPoint(x: nearLine * 3.5, y: nearLine * 3.5))
                path.addLine(to: CGPoint(x: middle * 0.6, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 2, y: farLine * 0.84))
                path.addLine(to: CGPoint(x: nearLine, y: middle * 0.75))
                path.closeSubpath()
            }
            .fill(.white)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: middle * 1.2, y: nearLine))
                path.addLine(to: CGPoint(x: width - nearLine * 5.9, y: nearLine * 3.5))
                path.addLine(to: CGPoint(x: middle * 0.9, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: farLine * 0.84))
                path.addLine(to: CGPoint(x: nearLine * 6.4, y: middle * 0.75))
                path.closeSubpath()
            }
            .fill(.white)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 1.9, y: farLine * 0.79))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.9, y: nearLine * 11.5))
                path.addLine(to: CGPoint(x: nearLine * 0.9, y: middle * 1.8))
                path.closeSubpath()
            }
            .fill(.white)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 1.9, y: farLine * 0.79))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.87, y: nearLine * 11.5))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: middle * 1.5))
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: nearLine * 0.9, y: middle * 1.8))
            }
            .fill(.white)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle * 1.8, y: nearLine * 11))
                path.addLine(to: CGPoint(x: middle * 1.9, y: nearLine * 16))
                path.addLine(to: CGPoint(x: middle * 1.84, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 1.8, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 2.9, y: middle + farLine * 1.1))
                path.addLine(to: CGPoint(x: nearLine * 2.1, y: nearLine * 10.33))
            }
            .fill(.clear)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle * 1.84, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: middle * 1.8, y: nearLine * 11))
            }
            .fill(.clear)
            .stroke(.black, style: StrokeStyle())
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: nearLine * 2.9, y: nearLine * 16.89))
                path.move(to: CGPoint(x: nearLine * 2.9, y: middle + farLine * 1.1))
                path.addLine(to: CGPoint(x: nearLine * 3.15, y: nearLine * 16.25))
            }
            .fill(.clear)
            .stroke(.black, style: StrokeStyle())
        }
    }
}

#Preview {
    PathAnimation()
        .frame(width: 400, height: 700)
}
