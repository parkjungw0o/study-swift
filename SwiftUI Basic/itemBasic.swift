//
//  itemBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 7/2/24.
//

import SwiftUI

struct itemBasic: View {
    
    // property
    var title: String
    var count: Int
    var color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .frame(width: 100,height: 100)
        .background(color)
        .cornerRadius(10)
    }
}

#Preview {
    itemBasic(title: "서과",count: 1, color: .red)
        .previewLayout(.sizeThatFits)
}
