//
//  ContentView.swift
//  BMI
//
//  Created by Pitchayut Yimyai on 22/3/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultText:String = "BMI Calculator"
    @State var weight:String = ""
    @State var height:String = ""
    var body: some View {
        VStack {
            
            Text(resultText).font(.largeTitle)
            HStack {
                Text("Weight")
                TextField("Kilograms", text: $weight).keyboardType(.numberPad)
            }.padding()
            
            HStack {
                Text("Height")
                TextField("Centimeters", text: $height).keyboardType(.numberPad)
            }.padding()
            
            Button(action: {
                let result = Double(self.weight)! / pow(Double(self.height)! / 100.0, 2)
                self.resultText = String(result)
            }) {
                Text("Calculate")
            }.padding()
                .background(.orange)
                .foregroundColor(.white)
                .clipShape(Capsule())
    
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//let result = Double(self.weight)! / pow(Double(self.height)! / 100.0, 2)
//self.resultText = String(result)
}
