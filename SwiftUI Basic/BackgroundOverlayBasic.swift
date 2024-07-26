//
//  BackgroundOverlayBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 7/10/24.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack (spacing: 20){
            
            Text("Hellow world!")
                .frame(width:100 , height: 100)
                .background(
                     Circle()
                        .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing)
                            )
                )
                .frame(width: 120, height: 120)
                .background(
                      Circle()
                .fill(Color.red)
                )
            
            Divider()
            // 2. Overylay
            Circle()
                .fill(Color.pink)
                .frame(width:100, height: 100)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(Color.white)
                )
                .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 120,height: 120)
                )
            
            Divider()
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100),
                    alignment: .leading
                    )
                .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 250, height: 250)
                )
                .padding()
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                     Circle()
                        .fill(
                        LinearGradient(
                                       gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.blue, radius: 10, x:0, y: 10)
                        .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                            .overlay(
                            Text("2")
                                .font(.headline)
                                .foregroundColor(.white)
                            )
                            .shadow(color: Color.red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 5)
                        ,alignment: .bottomTrailing
                        )
                    
                )
                .padding()
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
