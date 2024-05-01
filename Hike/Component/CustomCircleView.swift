//
//  CustomCircleView.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 30/04/2024.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors:
                                    [.customIndigoMedium,
                                     .seminLightColor],
                                   startPoint: isAnimating ? .topLeading : .bottomLeading,
                                   endPoint:  isAnimating ?  .bottomTrailing : .topTrailing))
                
                .onAppear() {
                    withAnimation(.linear(duration: 3.0).repeatForever()) {
                        self.isAnimating.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256,height: 256)
    }
}

#Preview {
    CustomCircleView()
}
