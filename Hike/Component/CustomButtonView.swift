//
//  CustomButtonView.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
          
            //MARK: DEPTH
            Circle()
                .fill(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .topLeading, endPoint: .bottomTrailing))
            //MARK: LIGHT
            Circle()
                .stroke(LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth: 4.0)
            //MARK: SURFACE
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .fontWeight(.black)
                .foregroundStyle(LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .topLeading, endPoint: .bottomTrailing))
        }  .frame(width: 58,height: 58)
    }
}

#Preview {
    CustomButtonView()
}
