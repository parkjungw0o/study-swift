//
//  ExtractSubViewBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 7/2/24.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack{
            
            Color.cyan
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack{
            itemBasic(title: "사과", count: 1, color: .red)
            itemBasic(title: "오렌지", count: 10, color: .orange)
            itemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
