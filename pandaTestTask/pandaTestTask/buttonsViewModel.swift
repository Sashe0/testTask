//
//  buttonsModel.swift
//  pandaTestTask
//
//  Created by Саша Боднар on 19.08.2023.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State private var isBlocked = false
    @State private var firstButtonName = "Lock"
    @State private var showDetailView = false
    
    var body: some View {
        GeometryReader { ratio in
            ZStack{
                Color.gray.ignoresSafeArea()
                
                VStack {
                    Image("pandaImage")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: ratio.size.height * 0.3, alignment: .leading)
                        .clipped()
                    
                    HStack(spacing: 20) {
                        
                        Button(firstButtonName) {
                            isBlocked.toggle()
                            firstButtonName = isBlocked ? "Unlock" : "Lock"
                        }
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(18)
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(Color.indigo, lineWidth: 3)
                        )
                        
                        Button("Open from top"){
                            withAnimation() {
                                showDetailView.toggle()
                            }
                        }
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .background(isBlocked ? Color.blue.opacity(0.3) : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(18)
                        .overlay(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(Color.indigo, lineWidth: 3)
                        )
                    }
                    
                    Spacer()
                    
                    Button("Open full"){
                        //Action
                    }
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(18)
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.indigo, lineWidth: 3)
                    )
                }
                .padding()
                
                if showDetailView{
                    withAnimation {
                        detailScreenView(hideView: $showDetailView)
                            .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .top)))
                    }
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
