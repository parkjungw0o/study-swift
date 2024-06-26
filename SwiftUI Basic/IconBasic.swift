//
//  IconBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 6/20/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack (spacing: 20){
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            //rendermode에서 original로 하게되면 실제 color 에서 multi color변경되게 됩니다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
