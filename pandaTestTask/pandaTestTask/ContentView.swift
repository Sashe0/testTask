//
//  ContentView.swift
//  pandaTestTask
//
//  Created by Саша Боднар on 19.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { ratio in
            ZStack {
                Color.gray.ignoresSafeArea()
                
                VStack(alignment: .center) {
                    Image("pandaImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: ratio.size.height * 0.3, alignment: .leading)
                        .clipped()
                    
                    ButtonsViewModel()
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
