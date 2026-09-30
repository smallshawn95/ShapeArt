import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        /*
        ZStack {
            Rectangle()
                .frame(width: 100.0, height: 100.0)
                .foregroundStyle(Color.blue)
            Circle()
                .frame(width: 100.0)
                .foregroundStyle(Color(red: 0/255, green: 255/255, blue: 255/255))
        }
        RoundedRectangle(cornerRadius: 20.0)
            .frame(width: 100.0, height: 100.0)
            .foregroundStyle(Color.red)
        UnevenRoundedRectangle(topLeadingRadius: 20.0, bottomTrailingRadius: 50.0)
            .frame(width: 100.0, height: 100.0)
            .foregroundStyle(Color.pink)
        Ellipse()
            .frame(width: 100.0, height: 150.0)
            .foregroundStyle(Color.green)
        Capsule()
            .frame(width: 100.0, height: 150.0)
            .foregroundStyle(Color(red: 64/255, green: 224/255, blue: 208/255))
        */
        ZStack {
            Color(red: 19 / 255, green: 33 / 255, blue: 104 / 255)
                .ignoresSafeArea()

            // 身體
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 150.0, height: 200.0)
                .foregroundStyle(Color.yellow)
            
            // 身體的孔
            Circle()
                .frame(width: 16.0)
                .foregroundStyle(Color(red: 175/255, green: 170/255, blue: 30/255))
                .offset(x: -55.0, y: -75.0)
            Circle()
                .frame(width: 8.0)
                .foregroundStyle(Color(red: 175/255, green: 170/255, blue: 30/55))
                .offset(x: -42.0, y: -65.0)
            Circle()
                .frame(width: 20.0)
                .foregroundStyle(Color(red: 175/255, green: 170/255, blue: 30/255))
                .offset(x: 52.0, y: -70.0)
            Circle()
                .frame(width: 14.0)
                .foregroundStyle(Color(red: 175/255, green: 170/255, blue: 30/255))
                .offset(x: -50.0, y: 15.0)
            Circle()
                .frame(width: 18.0)
                .foregroundStyle(Color(red: 175/255, green: 170/255, blue: 30/255))
                .offset(x: 52.0, y: 10.0)
            
            // 睫毛
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .rotationEffect(.degrees(-20))
                .offset(x: -36.0, y: -68.0)
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -25.0, y: -70.0)
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .rotationEffect(.degrees(20))
                .offset(x: -14.0, y: -68.0)
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .rotationEffect(.degrees(-20))
                .offset(x: 14.0, y: -68.0)
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 25.0, y: -70.0)
            Rectangle()
                .frame(width: 3.0, height: 10.0)
                .foregroundStyle(Color.black)
                .rotationEffect(.degrees(20))
                .offset(x: 36.0, y: -68.0)

            // 眼睛
            Circle()
                .frame(width: 50.0)
                .foregroundStyle(Color.white)
                .offset(x: -25.0, y: -40.0)
            Circle()
                .frame(width: 25.0)
                .foregroundStyle(Color.blue)
                .offset(x: -25.0, y: -40.0)
            Circle()
                .frame(width: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -25.0, y: -40.0)
            Circle()
                .frame(width: 50.0)
                .foregroundStyle(Color.white)
                .offset(x: 25.0, y: -40.0)
            Circle()
                .frame(width: 25.0)
                .foregroundStyle(Color.blue)
                .offset(x: 25.0, y: -40.0)
            Circle()
                .frame(width: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 25.0, y: -40.0)

            // 門牙（AI 輔助）
            HStack(spacing: 2) {
                Rectangle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundStyle(Color.white)
                Rectangle()
                    .frame(width: 15.0, height: 15.0)
                    .foregroundStyle(Color.white)
            }
            .offset(y: 20.0)

            // 笑容（AI 輔助）
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: 80, y: 0),
                    control: CGPoint(x: 40, y: 20)
                )
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 3, lineCap: .round)
            )
            .frame(width: 80.0, height: 25.0)
            .offset(y: 15.0)

            // 雙手
            Capsule()
                .frame(width: 8.0, height: 60.0)
                .foregroundStyle(Color.yellow)
                .rotationEffect(.degrees(35))
                .offset(x: -85.0, y: 30.0)
            Capsule()
                .frame(width: 8.0, height: 60.0)
                .foregroundStyle(Color.yellow)
                .rotationEffect(.degrees(-35))
                .offset(x: 85.0, y: 30.0)

            // 雙腿
            Capsule()
                .frame(width: 10.0, height: 75.0)
                .foregroundStyle(Color.yellow)
                .offset(x: -25.0, y: 125.0)
            Capsule()
                .frame(width: 10.0, height: 75.0)
                .foregroundStyle(Color.yellow)
                .offset(x: 25.0, y: 125.0)

            // 褲子
            Rectangle()
                .frame(width: 150.0, height: 50.0)
                .foregroundStyle(Color.brown)
                .offset(y: 75.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -55.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -20.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 20.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 55.0, y: 85.0)
            
            // 皮帶格
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -55.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: -20.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 20.0, y: 85.0)
            Rectangle()
                .frame(width: 25.0, height: 10.0)
                .foregroundStyle(Color.black)
                .offset(x: 55.0, y: 85.0)

            // 白襪
            Rectangle()
                .frame(width: 12.0, height: 20.0)
                .foregroundStyle(Color.white)
                .offset(x: -25.0, y: 145.0)
            Rectangle()
                .frame(width: 12.0, height: 20.0)
                .foregroundStyle(Color.white)
                .offset(x: 25.0, y: 145.0)
            
            // 鞋子
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 48.0, height: 24.0)
                .foregroundStyle(Color.black)
                .offset(x: -36.0, y: 165.0)
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 48.0, height: 24.0)
                .foregroundStyle(Color.black)
                .offset(x: 36.0, y: 165.0)
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
    let age = 20
    let name = "SmallShawn95"
    let height = 168.0
    print("\(name) 的年齡是 \(age) 歲，身高 \(height) 公分")

    func addNumber(startNumber: Int, endNumber: Int) -> Int {
        return startNumber + endNumber
    }
    let number = addNumber(startNumber: 100, endNumber: 100)

    let pi = Double.pi
    let now = Date.now
    let random = Int.random(in: 1...100)
}
