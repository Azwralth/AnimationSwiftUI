//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var iphoneView = false
    @State private var rectangleView = false
    
    var body: some View {
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
            
            IphoneView()
                .frame(width: 350, height: 700)
                .transition(.move(edge: .bottom))
                .offset(y: iphoneView ? 0 : UIScreen.main.bounds.height)
                .animation(.easeInOut(duration: 1.5), value: iphoneView)
            
            RectangleView()
                .frame(width: 300, height: 180)
                .animation(.linear, value: rectangleView)
                .offset(x: rectangleView ? 0 : UIScreen.main.bounds.height)
                .animation(.easeInOut(duration: 2), value: rectangleView)
        }
        .onTapGesture {
            iphoneView.toggle()
            rectangleView.toggle()
        }
    }
}

#Preview {
    ContentView()
}
