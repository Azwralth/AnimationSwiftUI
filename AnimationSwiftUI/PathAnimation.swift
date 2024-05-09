//
//  PathAnimation.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct PathAnimation: View {
    let earAnimation: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let sunRadius = size * 0.2
            
            
            // MARK: - солнце
            Path { path in
                path.addArc(
                    center: CGPoint(x: middle - nearLine * 2.5, y: nearLine),
                    radius: sunRadius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false
                )
            }
            .fill(Color.yellow)
            .offset(x: earAnimation ? middle * 0.3 : middle * 0.1)
            
            // MARK: - левый луг
            Path { path in
                path.move(to: CGPoint(x: -size, y: size * 1.15))
                path.addQuadCurve(
                    to: CGPoint(x: size * 0.6, y: size * 1.5),
                    control: CGPoint(x: middle, y: middle * 1.3)
                )
            }
            .fill(.green)
            .shadow(radius: 20)
            .offset(y: earAnimation ? middle * 0.3 : middle * 0.2)
            
            // MARK: - правый луг
            Path { path in
                path.move(to: CGPoint(x: size * 1.3, y: size * 1.4))
                path.addQuadCurve(
                    to: CGPoint(x: middle * 0.3, y: size * 1.5),
                    control: CGPoint(x: middle * 2.5, y: middle * 0.6)
                )
            }
            .fill(.green)
            .shadow(radius: 20)
            .offset(y: earAnimation ? middle * 0.3 : middle * 0.2)
            
            // MARK: - нижний луг
            Path { path in
                path.move(to: CGPoint(x: -size, y: size * 1.75))
                path.addQuadCurve(to: CGPoint(x: size * 1.5, y: size * 1.75), control: CGPoint(x: middle, y: middle * 1.3))
            }
            .fill(.green)
            .shadow(radius: 10)
            .offset(y: earAnimation ? middle * 0.4 : middle * 0.35)
            
            // MARK: - левое ухо
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine * 3, y: nearLine))
                path.addLine(to: CGPoint(x: nearLine * 3.5, y: nearLine * 3.5))
                path.addLine(to: CGPoint(x: middle * 0.6, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 2, y: farLine * 0.84))
                path.addLine(to: CGPoint(x: nearLine, y: middle * 0.75))
                path.closeSubpath()
            }
            .fill(.gray)
            .stroke(.gray, style: StrokeStyle())
            .shadow(radius: 5)
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
            
            // MARK: - левое ухо середина
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine * 2.8, y: nearLine * 2.4))
                path.addLine(to: CGPoint(x: nearLine * 2.8, y: nearLine * 3.4))
                path.addLine(to: CGPoint(x: middle - nearLine * 2.8, y: nearLine * 4.2))
                path.addLine(to: CGPoint(x: nearLine * 1.7, y: nearLine * 3.4))
                path.closeSubpath()
            }
            .fill(.myPink)
            .stroke(.myPink, style: StrokeStyle())
            .offset(x: middle * 0.04, y: middle * 0.75)
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
            
            // MARK: - правое ухо
            Path { path in
                path.move(to: CGPoint(x: middle * 1.2, y: nearLine))
                path.addLine(to: CGPoint(x: width - nearLine * 5.9, y: nearLine * 3.5))
                path.addLine(to: CGPoint(x: middle * 0.9, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: farLine * 0.84))
                path.addLine(to: CGPoint(x: nearLine * 6.4, y: middle * 0.75))
                path.closeSubpath()
            }
            .fill(.gray)
            .stroke(.gray, style: StrokeStyle())
            .shadow(radius: 5)
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
            
            // MARK: - правое ухо середина
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearLine * 2.8, y: nearLine * 2.4))
                path.addLine(to: CGPoint(x: nearLine * 2.8, y: nearLine * 3.4))
                path.addLine(to: CGPoint(x: middle - nearLine * 2.8, y: nearLine * 4.2))
                path.addLine(to: CGPoint(x: nearLine * 1.7, y: nearLine * 3.4))
                path.closeSubpath()
            }
            .fill(.myPink)
            .stroke(.myPink, style: StrokeStyle())
            .offset(x: middle * 0.55, y: middle * 0.8)
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
        
            // MARK: - тело
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle * 1.8, y: nearLine * 11))
                path.addLine(to: CGPoint(x: middle * 1.9, y: nearLine * 16))
                path.addLine(to: CGPoint(x: middle * 1.84, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 1.8, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 2.9, y: middle + farLine * 1.1))
                path.addLine(to: CGPoint(x: nearLine * 2.1, y: nearLine * 10.33))
                path.closeSubpath()
            }
            .fill(.gray)
            
            // MARK: - линии на голове
            Path { path in
                path.move(to: CGPoint(x: nearLine * 1.9, y: farLine * 0.79))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: middle * 1.5))
                path.addLine(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.9, y: nearLine * 11.5))
                path.addLine(to: CGPoint(x: nearLine * 0.9, y: middle * 1.8))
                path.closeSubpath()
            }
            .fill(.white)
            .stroke(.gray, style: StrokeStyle())
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
            
            Path { path in
                path.move(to: CGPoint(x: nearLine * 1.9, y: farLine * 0.79))
                path.addLine(to: CGPoint(x: middle - nearLine * 1.87, y: nearLine * 11.5))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: middle * 1.5))
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: nearLine * 0.9, y: middle * 1.8))
                
            }
            .fill(.gray)
            .rotationEffect(Angle.degrees(earAnimation ? -10 : 0), anchor: .center)
            
            // MARK: - линии на теле
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: middle * 1.84, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: nearLine * 5.5, y: nearLine * 16.9))
                path.addLine(to: CGPoint(x: middle * 1.8, y: nearLine * 11))
            }
            .fill(.gray)
            
            // MARK: - линии на груди
            Path { path in
                path.move(to: CGPoint(x: nearLine * 6, y: nearLine * 9.6))
                path.addLine(to: CGPoint(x: nearLine * 2.9, y: nearLine * 16.89))
                path.move(to: CGPoint(x: nearLine * 2.9, y: middle + farLine * 1.1))
                path.addLine(to: CGPoint(x: nearLine * 3.15, y: nearLine * 16.25))
            }
            .fill(.white)
            .stroke(.black, style: StrokeStyle())
        }
    }
}

#Preview {
    PathAnimation(earAnimation: false)
        .frame(width: 400, height: 700)
}
