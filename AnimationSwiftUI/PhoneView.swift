//
//  IphoneView.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct PhoneView: View {
    let isPresented: Bool
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                
                Rectangle()
                    .fill(
                        RadialGradient(
                            colors: [.darkGreen, .teal],
                            center: .center,
                            startRadius: size * 3,
                            endRadius: size * 0.1
                        )
                    )
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: height * 0.09))
                    .overlay(RoundedRectangle(cornerRadius: height * 0.09).stroke(Color.black, lineWidth: 6))
                
                Rectangle()
                    .fill(.white)
                    .frame(width: width * 0.85, height: height * 0.24)
                    .clipShape(RoundedRectangle(cornerRadius: height * 0.04))
                    .overlay(RoundedRectangle(cornerRadius: height * 0.04).stroke(.gray, lineWidth: 3))
                    .offset(x: size / 15, y: size / 2.4)
                
                Rectangle()
                    .frame(width: width * 0.34, height: height * 0.055)
                    .clipShape(RoundedRectangle(cornerRadius: height * 0.09))
                    .offset(x: size * 0.33, y: size * 0.08)
                
                Rectangle()
                    .frame(width: width * 0.02, height: height * 0.04)
                    .offset(x: -size / 56, y: size / 2.5)
                
                Rectangle()
                    .frame(width: width * 0.02, height: height * 0.08)
                    .offset(x: -size / 56, y: size / 1.8)
                
                Rectangle()
                    .frame(width: width * 0.02, height: height * 0.08)
                    .offset(x: -size / 56, y: size / 1.35)
                
                Rectangle()
                    .frame(width: width * 0.02, height: height * 0.1)
                    .offset(x: size, y: size / 1.45)
                
                if isPresented {
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: width * 0.2, height: height * 0.1)
                        .offset(x: size / 2.5, y: size / 0.8)
                        .disabled(isPresented)
                }
                Text(isPresented ? "Card Added" :  "Add Card")
                    .font(.system(size: size * 0.1))
                    .foregroundStyle(.white)
                    .offset(x: isPresented ? size / 4 : size / 3.5, y: size / 0.95)
                
                Image(systemName: "plus.circle")
                    .resizable()
                    .foregroundStyle(.blue)
                    .frame(width: width * 0.1, height: height * 0.05)
                    .offset(x: size / 2.25, y: size / 1.63)
            }
        }
    }
}

#Preview {
    PhoneView(isPresented: false)
        .frame(width: 300, height: 600)
}
