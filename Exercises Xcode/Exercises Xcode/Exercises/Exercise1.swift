//
//  ContentView.swift
//  Exercises Xcode
//
//  Created by Diego Sánchez Schimmelfennig on 25/08/24.
//

import SwiftUI

struct Exercise1: View {
    var body: some View{
        
        VStack {
            HStack{
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().frame(height: 100).foregroundColor(.orange)
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
            }
            
            Rectangle().frame(height: 100).foregroundColor(.orange)
            HStack{
                Circle().frame(height: 150).foregroundColor(.green)
                Rectangle().frame(width:120,height: 250)
                Circle().frame(height: 150).foregroundColor(.blue)
            }
            Rectangle().frame(height: 100).foregroundColor(.orange)
            HStack{
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle().frame(height: 100).foregroundColor(.orange)
                Rectangle().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
            }
        }
        .background(.red)
    }
}

#Preview{
    Exercise1()
}
