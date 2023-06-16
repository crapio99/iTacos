//
//  Drink.swift
//  iTacos
//
//  Created by Jensey Rivera on 5/4/23.
//

import Foundation
import SwiftUI

struct Drink: Identifiable, Hashable, Codable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case tacos = "tacos"
        case drinks = "drinks"
        case burrito = "burrito"
        case dessert = "dessert"
        
    }
    
    
}
