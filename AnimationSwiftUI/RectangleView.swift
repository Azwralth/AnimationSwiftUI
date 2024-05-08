//
//  RectangleView.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct RectangleView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            ZStack {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.black, .green]), startPoint: UnitPoint(x: 0, y: 1), endPoint: UnitPoint(x: 1, y: 0))
                    )
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: height * 0.12))
                    .shadow(radius: 10)
                
                Text("Credit")
                    .bold()
                    .font(.title2)
                    .scaleEffect(size / 160)
                    .foregroundStyle(.white)
                    .offset(x: -size / 1.8 , y: -size / 3.4)
                
                Text("*** 4325")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .scaleEffect(size / 160)
                    .offset(x: -size / 2 , y: size / 3.3)
                
                Circle()
                    .fill(.yellow)
                    .frame(width: size * 0.2, height: size * 0.2)
                    .offset(x: size * 0.6, y: size * 0.28)
                
                Circle()
                    .fill(.red)
                    .frame(width: size * 0.2, height: size * 0.2)
                    .offset(x: size * 0.5, y: size * 0.28)
            }
        }
    }
}

#Preview {
    RectangleView()
        .frame(width: 300, height: 180)
}
