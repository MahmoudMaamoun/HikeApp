//
//  SettingScreen.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 30/04/2024.
//

import SwiftUI

struct SettingsScreen: View {
    
    //MARK: PROPERTIES
    
    @State private var alternateAppicons:[String] = ["AppIcon-Backpack",
                                                     "AppIcon-Camera",
                                                     "AppIcon-Campfire",
                                                     "AppIcon-MagnifyingGlass",
                                                     "AppIcon-Map",
                                                     "AppIcon-Mushroom"]
    
    
    var body: some View {
        List {
            
            //MARK: - HEADER VIEW
            
            VStack {
                HStack()
                {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight:.black))
                    VStack {
                        Text("Hike")
                            .font(.system(size: 40,weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                      
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                   Spacer()
                }
                .foregroundStyle (
                    LinearGradient(colors: [.customGrayLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom)
            )
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .fontWeight(.heavy)
                        .font(.title2)
                    
                    Text("The hike which looks gourgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                       
                    Text("Dust off the boots! it's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenDark)
                }
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.bottom,16)
            }
            //MARK: - SECTION ICONS
            Section( header:Text("Alternate App icons")) {
                ScrollView(.horizontal) {
                    HStack(content: {
                        ForEach(alternateAppicons.indices, id: \.self) { item in
                            Button(action: {
                                print(alternateAppicons[item])
                                UIApplication.shared.setAlternateIconName(alternateAppicons[item]) { error in
                                    if error == nil {
                                        print("App icon changed successfully")
                                    } else {
                                        print("error has been occured \(error!.localizedDescription)")
                                    }
                                        
                                }
                                
                            }, label: {
                                Image("\(alternateAppicons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                .cornerRadius(16)
                            })
                            
                          
                        }
                    })
                }
            }
           
            
        
            //MARK: - SECTION ABOUT
            Section(
             header: Text("About The App"),
             content: {
                 CustomRowListView(itemLabel: "Application",iconName: "apps.iphone", content: "Hike", tintColor: .customGreenMedium)
                 CustomRowListView(itemLabel: "Compatibility",iconName: "info.circle", content: "iPhone, iPadOS", tintColor: .red)
                 CustomRowListView(itemLabel: "Technology",iconName: "swift", content: "Swift", tintColor: .orange)
                 CustomRowListView(itemLabel: "Version",iconName: "gear", content: "1.0", tintColor: .purple)
                 CustomRowListView(itemLabel: "Developer",iconName: "ellipsis.curlybraces", content: "Mahmoud Maamoun", tintColor: .teal)
                 CustomRowListView(itemLabel: "Designer",iconName: "paintpalette", content: "Ropert Petras", tintColor: .pink)
                 CustomRowListView(itemLabel: "Website",iconName: "link.circle", tintColor: .yellow, itemLinkLabel: "Alefsoftware",itemLinkVal: "https://alefsoftware.com")
             })
        }
    }
}

#Preview {
    SettingsScreen()
}
