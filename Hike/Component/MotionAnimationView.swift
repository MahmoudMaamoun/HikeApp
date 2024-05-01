//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 30/04/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    
    //MARK: PROPERTIES
    @State private var randomCircles : Int = Int.random(in: 1...8)
    @State private var isAnimating : Bool = false
    //MARK: FUNCTIONALITY
    
    // RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...80))
    }
    // RANDOM COORDINATES
    func randomCoordinates () -> CGFloat {
        return CGFloat(Int.random(in: 0...256))
    }
    // RANDOM SPEED
    func randomSpeed()-> CGFloat {
        return CGFloat(Double.random(in: 0.1...1))
    }
    // RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // RANDOM DELAY
    func randomDelay() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    var body: some View {
        ZStack {
            ForEach(0...randomCircles , id: \.self) {_ in
                Circle()
                     .foregroundColor(.white)
                     .opacity(0.25)
                     .frame(width: randomSize())
                     .position(x:randomCoordinates(),y: randomCoordinates())
                     .scaleEffect(randomScale())
                     .onAppear(perform: {
                         withAnimation (
                            .interpolatingSpring(stiffness: 0.25,damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                            
                         ) {
                             isAnimating = true
                         }
                     })
            }
        }
        .frame(width: 256,height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
         
    }
}
