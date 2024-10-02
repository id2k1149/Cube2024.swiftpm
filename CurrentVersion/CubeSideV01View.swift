import SwiftUI

struct CubeSideV01View: View {
 //   let corner1 = [Double(), Double]
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let longSize = size * 0.6
      //      let shortSize = size * 0.4
       
            Path {
                path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: longSize, y: 0))
                path.addLine(to: CGPoint(x: longSize, y: longSize))
                path.addLine(to: CGPoint(x: 0, y: longSize))
                path.addLine(to: CGPoint(x: 0, y: 0))
            }
            .stroke(Color.blue,
                    lineWidth: 1)
        }
    }
}

#Preview {
    
    GeometryReader { geometry in
        let width = geometry.size.width
        let height = geometry.size.height
        
        ZStack {
            CubeSideV01View()
                .padding()
             Text("Width: \(lround(width))")
           
        }
    }
}
