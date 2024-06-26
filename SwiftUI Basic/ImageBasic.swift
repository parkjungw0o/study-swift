//
//  ImageBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 6/20/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Image("Cat")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150)
            
            Divider()   // 선
            
            Image("Cat")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ImageBasic()
}
