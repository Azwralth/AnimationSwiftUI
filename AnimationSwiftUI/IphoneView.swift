//
//  IphoneView.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct IphoneView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            Rectangle()
                .fill(.white)
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: height * 0.09))
                .overlay(RoundedRectangle(cornerRadius: height * 0.09).stroke(Color.gray, lineWidth: 4))
            
            Rectangle()
                .fill(.clear)
                .frame(width: 250, height: 250)
                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color.gray, lineWidth: 4))
                .offset(x: width / 12, y: height / 5)
            
            Rectangle()
                .frame(width: width * 0.35, height: height * 0.06)
                .clipShape(RoundedRectangle(cornerRadius: height * 0.09))
                .offset(x: size * 0.35, y: size * 0.08)
            
        }
    }
}

#Preview {
    IphoneView()
        .frame(width: 300, height: 600)
}
