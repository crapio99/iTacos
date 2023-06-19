//
//  SlashScreenView.swift
//  iTacos
//
//  Created by Jensey Rivera on 6/18/23.
//

import SwiftUI

struct SplashScreenView: View {
    /*var body: some View {
        Text("Splash Screen")
    }*/
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        if isActive {
           testtest()
        } else {
            
            VStack{
                VStack{
                    Image("icon")
                        .font(.system(size: 80))
                    Text("iTacos").font(Font.custom("Baskerville-Bold", size: 40)).foregroundColor(.black.opacity(0.80))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }

        }
            }
    
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
