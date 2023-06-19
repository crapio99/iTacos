//
//  ContentView.swift
//  Shared
//
//  Created by Jensey Rivera on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("iTacos").foregroundColor(.white).font(.system(size: 30))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
