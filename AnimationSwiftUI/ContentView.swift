//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by Владислав Соколов on 08.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var earAnimation = false
    
    var body: some View {
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
            
            PathAnimation(earAnimation: earAnimation)
                .frame(width: 400, height: 700)
                .onAppear {
                    withAnimation(.easeInOut(duration: 2).repeatForever()) {
                        earAnimation.toggle()
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
