//
//  GradientBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 6/20/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill (
                   LinearGradient(
                    gradient: Gradient(colors: [Color.gray, Color.black]),
                    startPoint: .topLeading,
                    endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
                Text("Redial Gradient")
                    .font(.title2)
                RoundedRectangle(cornerRadius: 25)
                    .fill (
                        RadialGradient(gradient: Gradient(colors: [Color.black, Color.gray]),
                            center: .leading,
                            startRadius: 5,
                            endRadius: 600 )
                        )
                    .frame(width: 300, height: 200)
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.black, Color.gray]),
                                    center: .topLeading,
                                    angle: .degrees(100))
                )
                .frame(width: 300, height: 200)
            }
        }
       
}

#Preview {
    GradientBasic()
}
