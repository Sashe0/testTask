//
//  detailScreenView.swift
//  pandaTestTask
//
//  Created by Саша Боднар on 19.08.2023.
//

import Foundation
import SwiftUI

struct detailScreenView: View {
    @Binding var hideView: Bool
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            hideView.toggle()
                        }
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .padding(20)
                    }
                }
                
                Spacer()
            }
        }
        .background(Image("panda")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 500, height: 900, alignment: .leading))
        .zIndex(1)
    }
}
