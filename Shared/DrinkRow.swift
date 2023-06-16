//
//  DrinkRow.swift
//  iTacos
//
//  Created by Jensey Rivera on 5/15/23.
//

import SwiftUI

struct DrinkRow: View {

    var categoryName:String
    var drinks:[Drink]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(drinks, id: \.name) { drink in
                        NavigationLink(destination: DrinkDetail(drink: drink))
                        {
                            DrinkItem(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            
            }
        }
       
        
    }
    

}
#if DEBUG
struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Menu", drinks: drinkData)
    }
}
#endif

