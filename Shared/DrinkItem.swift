//
//  DrinkItem.swift
//  iTacos
//
//  Created by Jensey Rivera on 5/15/23.
//

import Foundation
import SwiftUI

struct DrinkItem : View {
    /* json escape formatter www.freeformatter.com/json-escape.html#ad-output*/
    
    
    var drink:Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
                
                    
            VStack(alignment: .leading, spacing: 5.0) {
            Text(drink.name)
                .font(.headline)
                .foregroundColor(.primary)
                Text(drink.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
                }
        }
    }
}

#if DEBUG
struct DrinKItem_Previews : PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
#endif

//JSON formatter escape lines
//www.freeformatter.com/json-escape.html#ad-output

