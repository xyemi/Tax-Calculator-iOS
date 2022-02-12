//
//  ContentView.swift
//  First Project
//
//  Created by Opeyemi Fasina on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            } else {
                Text("Please enter a numerical value")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
