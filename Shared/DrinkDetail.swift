//
//  DrinkDetail.swift
//  iTacos
//
//  Created by Jensey Rivera on 5/15/23.
//

import Foundation
import SwiftUI

struct DrinkDetail: View {
    var drink:Drink
    
    var body: some View {
        List{
            ZStack (alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                Rectangle()
                    .frame(height: 90)
                    .opacity(0.30)
                    .blur(radius: 10)
                HStack{
                    VStack (alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }.padding(.leading)
                        .padding(.bottom)
                Spacer()
                }
                
            }
            Text(drink.description)
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(nil)
                .foregroundColor(.primary)
                .font(.body)
                .lineSpacing(13)
                .padding(.top, 30)
            HStack {
                Spacer()
                OrderButton()
                    .cornerRadius(20)
                Spacer()
                }.padding(.top, 40)
        }
            
    }
}

    struct OrderButton : View {
    var body: some View {
        Button(action: {}) {
            Text("Ordene Ahora")
        }.frame(width: 200, height: 50).foregroundColor(.white).font(.headline)
        .cornerRadius(10)
        .background(Color.green)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[0])
    }
}
