//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
      
        ZStack {
            //MARK: 1. DEPTH
            Color.colorGreenDark
                .cornerRadius(40)
                .offset(y:12)
            //MARK: 2. LIGHT
            Color.colorGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.8)
            //MARK: 3. SURFACE
            
            LinearGradient(colors:
                            [Color.customGreenLight,
                             Color.customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            .cornerRadius(40)
        }
        
    }
}

#Preview {
    CustomBackgroundView()
        .padding(20)
}
