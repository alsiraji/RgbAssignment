//
//  ContentView.swift
//  RgbAssignment
//
//  Created by Mohammed Alsiraji on 24/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State var rgbRed: Double
    @State var rgbBlue: Double
    @State var rgbGreen: Double
    var body: some View {
        
        VStack{
            CreatingColor(rgbColor: .red, colorName: "Red", rgb: $rgbRed)
            CreatingColor(rgbColor: .blue, colorName: "Blue", rgb: $rgbBlue)
            CreatingColor(rgbColor: .green, colorName: "Green", rgb: $rgbGreen)
            VStack {
                Text("RGB")
                Rectangle()
                    .fill(Color(red: rgbRed, green: rgbGreen, blue: rgbBlue))
                    .frame(width: 100, height: 100)
                
            }.padding()
            
            
        }
   
    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rgbRed: Double(), rgbBlue: Double(), rgbGreen: Double())
    }
}


struct CreatingColor: View {
    @State var rgbColor: Color
    var colorName:String
     @Binding var rgb: Double
    
    var body: some View {
        VStack{
            Text(colorName)
                .foregroundColor(rgbColor)
            Slider(value:$rgb,in: 0...1)
                .tint(rgbColor)
        }
    }
}
