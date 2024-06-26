import SwiftUI

struct Pratice: View {
    @State private var currentTime = Date()
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        HStack {
            // 시간 표시
            Text(currentTimeString)
                .font(.system(size: 20, weight: .medium))
                .onReceive(timer) { _ in
                    currentTime = Date()
                }
            
            Spacer()
            
            // 배터리 아이콘 및 상태 표시
            HStack(spacing: 4) {
                Image(systemName: "battery.100")
                    .font(.system(size: 20))
                Text("100%")
                    .font(.system(size: 20, weight: .medium))
            }
        }
        .padding()
    }
    
    private var currentTimeString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: currentTime)
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            Pratice()
        }
    }
}


