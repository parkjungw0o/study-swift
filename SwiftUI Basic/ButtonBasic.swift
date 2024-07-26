//
//  ButtonBasic.swift
//  SwiftUI Basic
//
//  Created by 박정우 on 7/26/24.
//

import SwiftUI

struct ButtonBasic: View {
    // property
    @State var maintitle: String = "아직 버튼 안눌림"
    
    var body: some View {
        VStack (spacing: 20) {

            Text(maintitle)
                .font(.title)
            
            Divider()
            
            // 1번 버튼
            // action 은 button을 눌렀을때 실행할 event 넣기
            // label은 button모양 디자인
            Button {
                self.maintitle = "기본 버튼"
            } label: {
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            // 2번 버튼
            Button {
                self.maintitle = "저장 버튼 눌림"
            } label: {
                 Text("저장")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            }
            
            Divider()
            
            // 3번 버튼
            Button {
                self.maintitle = "3번 버튼 눌림"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            
            // 4번 버튼
            Button{
                self.maintitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                      Capsule()
                        .stroke(Color.gray, lineWidth: 2.5)
                    )
            }
        }
    }
}

#Preview {
    ButtonBasic()
}
