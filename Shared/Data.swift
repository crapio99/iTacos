//
//  Data.swift
//  iTacos
//
//  Created by Jensey Rivera on 5/15/23.
//

//
//  Data.swift
//  Verde Luz PR SwiftUI Test 2
//
//  Created by JENSEY RIVERA on 3/25/20.
//  Copyright © 2020 Collective Cloud, LLC. All rights reserved.
//

import Foundation

let drinkData:[Drink] = load("menu.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main Bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't find \(filename) from main Bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
