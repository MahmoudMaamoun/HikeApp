//
//  CustomListRow.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 01/05/2024.
//

import SwiftUI

struct CustomRowListView: View {
    var body: some View {
        LabeledContent {
            Text("Hike")
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8.0)
                        .frame(width: 30,height: 30)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Image(systemName: "apps.iphone")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                }
                Text("Application")
               
            }
        }
    }
}

#Preview {
    List() {
        CustomRowListView()
    }
}
