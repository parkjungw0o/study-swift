import SwiftUI

struct ContentView: View {
    @State private var isPowerOn: Bool = false
    
    var body: some View {
        VStack {
            Text(isPowerOn ? "전원 켜짐" : "전원 꺼짐")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                isPowerOn.toggle()
                print("전원 상태: \(isPowerOn ? "켜짐" : "꺼짐")") // 디버깅용 출력
            }) {
                Text(isPowerOn ? "전원 끄기" : "전원 켜기")
                    .font(.title)
                    .padding()
                    .background(isPowerOn ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

