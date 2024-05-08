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
    @State private var isPresented = false
    
    var body: some View {
        ZStack {
            Color(.lavanda)
                .ignoresSafeArea()
            
            PhoneView(isPresented: isPresented)
                .frame(width: 350, height: 700)
                .transition(.move(edge: .bottom))
                .offset(y: iphoneView ? 0 : UIScreen.main.bounds.height)
                .animation(.easeInOut(duration: 1.5), value: iphoneView)
            
            if rectangleView {
                CardView()
                    .frame(width: 300, height: 180)
                    .animation(.linear, value: rectangleView)
                    .offset(x: rectangleView ? 0 : UIScreen.main.bounds.height, y: -120)
                    .transition(.move(edge: .trailing))
            }
        }
        .onTapGesture {
            activateAnimation()
        }
    }
    
    private func activateAnimation() {
        withAnimation {
            iphoneView.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                withAnimation {
                    isPresented.toggle()
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    rectangleView.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
