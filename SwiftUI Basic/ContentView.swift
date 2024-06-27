//
//  ContentView.swift
//  Homework3
//
//  Created by 박정우 on 6/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack{
                    Text("안녕하세요!")
                        .padding(.top, 60)
                        .font(.system(size: 25))
                        .padding(.leading, 24)
                    
                    HStack(spacing: 0){
                        Text("한재형")
                            .foregroundColor(.green)
                            .font(.system(size: 25))
                            .bold()
                        
                        Text("님")
                            .font(.system(size: 25))
                            .bold()
                    }
                    .padding(.trailing, 5)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .padding(.top, 15)
                    .padding(.trailing, 24)
            }
            
            Text("독서 신청 목록")
                .foregroundStyle(.gray)
                .font(.system(size: 14))
                .padding(.top, 40)
                .padding(.leading, 24)

            ScrollView {
                VStack(spacing: 20) {
                    Booklist(title: "세상의 마지막 기차역세상의 마지막 기차역", description: "무라세 다케시무라세 다케시무라세 다케시무라세 다케시")
                    Booklist(title: "세상의 마지막 기차역", description: "무라세 다케시")
                    Booklist(title: "세상의 마지막 기차역", description: "무라세 다케시")
                    Booklist(title: "세상의 마지막 기차역", description: "무라세 다케시")
                }
                .padding(.top)
            }
        }
    }
}


@ViewBuilder
func Booklist(title: String, description: String) -> some View {
    HStack(spacing: 20) {
        VStack(alignment: .leading){
            Text("\(title)")
                .font(.system(size: 17))
                .padding(5)
            
            Text("\(description)")
                .font(.system(size: 15))
                .opacity(0.5)
                .padding(.leading,5)
        }
        
        Spacer()
        
        Button {
            
        } label: {
            Image(systemName: "pencil")
                .foregroundStyle(.green)
        }
        
        Button {
            
        } label: {
            Image(systemName: "trash")
                .foregroundStyle(.red)
        }
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 20)
    .background {
        RoundedRectangle(cornerRadius: 8)
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.05), radius: 10, x: 0)
    }
    .padding(.horizontal, 20)
}

#Preview {
    ContentView()
}


