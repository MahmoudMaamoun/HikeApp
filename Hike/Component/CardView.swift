//
//  CardView.swift
//  Hike
//
//  Created by Mahmoud Maamoun on 29/04/2024.
//

import SwiftUI

struct CardView: View {
    
    //MARK: PROPERITIES
    
    @State private var shownImage:Int = 1
    @State private var randomImage:Int = 1
    
    //MARK: FUNCTIONS
    
    func makeRandomImage () {
        repeat {
            randomImage = Int.random(in: 1...5)
        } while (randomImage == shownImage)
        shownImage = randomImage
    }
    
    var body: some View {
    
            ZStack {
                
                CustomBackgroundView()
                
                VStack() {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Hiking")
                                .font(.system(size: 52))
                                .fontWeight(.black)
                                .foregroundStyle(LinearGradient(colors: [.colorGrayMedium,.colorGrayLight], startPoint: .top, endPoint: .bottom))
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                CustomButtonView()
                            })
                        }
                        .padding(30)
                        Text("Fun and enjoyable outdoor activity for friends and families")
                            .italic()
                            .foregroundStyle(.colorGrayMedium)
                            .padding(.horizontal,30)
                        
                        ZStack {
                            Circle()
                                .fill(
                                    LinearGradient(colors:
                                                    [.customIndigoMedium,
                                                     .seminLightColor],
                                                   startPoint: .topLeading,
                                                   endPoint: .bottomTrailing))
                                .frame(width: 256,height: 256)
                            
                            Image("image-\(randomImage)")
                                .resizable()
                                .scaledToFit()
                                .animation(.default, value:shownImage)
                        }
                    }
                    
                   //MARK: FOOTER
                    
                    Button(action: {
                        print("button has been clicked")
                        makeRandomImage()
                    }, label: {
                        Text("Explore More")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGreenLight,
                                    .customGreenMedium],
                                               startPoint: .top,
                                               endPoint: .bottom))
                        
                            .shadow(color: Color.black.opacity(0.25),
                                    radius: 0.25,x: 1,y: 2)
                    })
                    .buttonStyle(GradientButton())
                  
                }
                
            }
            .frame(width: 320,height: 570)
//        }
    }
}

#Preview {
    CardView()
}
