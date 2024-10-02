//
//  SwiftUIView.swift
//  
//
//  Created by Max Franz Immelmann on 10/2/24.
//

import SwiftUI

struct CubeSideView: View {
    let points: [CGPoint]      // Массив для хранения координат 4 точек
    let isDashed: Bool         // Булевая переменная для определения типа линии (сплошная или прерывистая)
    let areLinesVisible: Bool  // Булевая переменная для видимости линий
    
    var body: some View {
        // Используем Canvas или Path для рисования
        GeometryReader { geometry in
            Path { path in
                // Стартовая точка - первая в массиве
                path.move(to: points[0])
                
                // Линии к остальным точкам
                for i in 1..<points.count {
                    path.addLine(to: points[i])
                }
                
                // Замыкаем четырёхугольник
                path.closeSubpath()
            }
         //   .stroke(areLinesVisible ? (isDashed ? dashStyle : solidStyle) : Color.clear, lineWidth: 2)
        }
    }
    
    // Стиль для сплошной линии
    var solidStyle: some ShapeStyle {
        Color.black
    }
    
    // Стиль для прерывистой линии
    var dashStyle: some ShapeStyle {
        Color.black
    }
}

let points = [
    CGPoint(x: 50, y: 50),   // Первая точка
    CGPoint(x: 150, y: 50),  // Вторая точка
    CGPoint(x: 150, y: 150), // Третья точка
    CGPoint(x: 50, y: 150)   // Четвертая точка
]

#Preview {
    
    //    GeometryReader { geometry in
    //        let width = geometry.size.width
    //        let height = geometry.size.height
    //
    //        let points = [
    //            CGPoint(x: 50, y: 50),   // Первая точка
    //            CGPoint(x: 150, y: 50),  // Вторая точка
    //            CGPoint(x: 150, y: 150), // Третья точка
    //            CGPoint(x: 50, y: 150)   // Четвертая точка
    //        ]
    //
    //        ZStack {
    //            CubeSideView(points: points, isDashed: false, areLinesVisible: true)
    //                .padding()
    //            Text("Width: \(lround(width))")
    //
    //        }
    //    }
    
    
    
    
    
    
        CubeSideView(
            points: points,
            isDashed: false,
            areLinesVisible: true
            )
    
}

