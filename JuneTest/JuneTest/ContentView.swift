//
//  ContentView.swift
//  JuneTest
//
//  Created by Danny Schnabel on 2022-06-08.
//

import SwiftUI
import AngletextSDK

struct ContentView: View {
    @State var angle: Double = 0
        
    var body: some View {
        ZStack {
            Color.cyan
            HStack {
                TextAngler(theText: "Hello", angle: $angle)
                TextAngler(theText: "UltraThin", angle: $angle)
                TextAngler(theText: "World", angle: $angle)
            }
        }
        .ignoresSafeArea()
        .onAppear(perform: change)
    }
    
    func change() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1/6) {
            angle = angle + 1
            change()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
