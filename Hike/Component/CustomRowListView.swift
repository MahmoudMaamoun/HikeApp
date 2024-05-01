//
//  CustomListRow.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 01/05/2024.
//

import SwiftUI

struct CustomRowListView: View {
    
    @State var itemLabel:String
    @State var iconName:String
    @State var content:String? = nil
    @State var tintColor:Color
    @State var itemLinkLabel:String? = nil
    @State var itemLinkVal:String? = nil
    
    var body: some View {
        LabeledContent {
            if content != nil {
                Text(content!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else {
                Link(destination: URL(string:itemLinkVal!)!, label: {
                    Text(itemLinkLabel!)
                       
                })
            }
           
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8.0)
                        .frame(width: 30,height: 30)
                        .foregroundColor(tintColor)
                    Image(systemName: iconName)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                }
                Text(itemLabel)
               
            }
        }
    }
}

#Preview {
    List() {
        CustomRowListView(itemLabel: "Application",iconName: "apps.iphone", content: "Hola", tintColor: .green)
        CustomRowListView( itemLabel: "DLDL",iconName: "apps.iphone", content: "Hola",tintColor: .red)
        CustomRowListView(itemLabel: "DLDL",iconName: "apps.iphone",tintColor: .green,itemLinkLabel: "link",itemLinkVal: "https://www.apple.com")
    }
}
