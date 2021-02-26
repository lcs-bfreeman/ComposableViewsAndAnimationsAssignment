//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI

struct CustomComposableView: View {
    @State private var radius = false
    @State private var bright = false
    @State private var bo: CGFloat = 0
    @State private var ao: CGFloat = 100
    var text: String 



    var body: some View {
        
        Text("\(text)")
            .font(.largeTitle)
            
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
            .offset(x: 0, y: bo)
            .scaleEffect(radius ? 20.0 : 0.4)
            .brightness(bright ? 1.0 : 0.0)
            .animation(.easeIn(duration: 5))
            .onTapGesture {
            self.radius.toggle()
                self.bright.toggle()
                bo += 500
        }

    }
}

struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView(text: "phrase")
    }
}
