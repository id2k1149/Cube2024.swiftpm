//
//  SwiftUIView.swift
//  
//
//  Created by Max Franz Immelmann on 10/2/24.
//

import SwiftUI

struct PathV2View: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let minSize = min(width, height)
            let middle = minSize / 2
            let nearLine = minSize * 0.1
            let farLine = minSize - nearLine
            
           
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine,
                                      y: nearLine))
                path.addLine(to: CGPoint(x: farLine,
                                         y: farLine))
                path.addLine(to: CGPoint(x: nearLine,
                                         y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine,
                                         y: nearLine))
                path.closeSubpath()
            }
            //            .fill(Color.gray)
            .stroke(Color.black)
            
            
            
            
            Path { path in
                path.move(to: CGPoint(x: middle,
                                      y: nearLine))
                path.addLine(to: CGPoint(x: middle,
                                         y: farLine))
            }
            .stroke(Color.green,
                    style: StrokeStyle(
                        lineWidth: 2,
                        dash: [minSize / nearLine])
            )
        }
//        .background(Color.gray)
    }
}

#Preview {
    PathV2View()
        .frame(width: 300, height: 300)
        .border(Color.blue)
        
}

//struct PathView_Previews: PreviewProvider {
//    static var previews: some View {
//        PathView()
//            .frame(width: 200, height: 200)
//    }
//}
