//
//  ExtractViewBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 6/28/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack{
            backgroundColor
              .ignoresSafeArea()
            contentLayer
        }
    }
    // Content
    var contentLayer: some View {
        VStack{
            Text("Extract View 연습")
                .font(.title)
            
            Button{
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
