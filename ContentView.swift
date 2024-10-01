import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}

#Preview {
    
        
        VStack {
            ContentView()
            
            GeometryReader { geometry in
                let width = geometry.size.width
                Text("Width: \(lround(width))")
                
            }
                
            
            
        }
    
}
