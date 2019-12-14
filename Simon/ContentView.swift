//
//  ContentView.swift
//  Simon
//
//  Created by Omer Gabbai on 13/12/2019.
//  Copyright © 2019 Omega5. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttonWidth: CGFloat = 180
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Simon Says")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .frame(height: 220, alignment: .top)
             
                ZStack {
                    
                    
                    VStack {
                        HStack {
                            button(color: Color(red: 0.5, green: 1.0, blue: 0.9))
                            button(color: Color.purple)
                        }
                        
                        HStack{
                            button(color: Color(red: 1.0, green: 0.3, blue: 0.5))
                            button(color: Color.blue)
                        }
                    }
                    
                    Circle()
                       .overlay(
                           Circle()
                            .stroke(Color.black,lineWidth:16)
                         ).foregroundColor(Color.white)
                    .frame(width: 110, height: 110)
                }
            }
        }
    }
    
    func button(color: Color) -> some View {
        
        return Rectangle()
            .fill(color)
            .frame(width: buttonWidth, height: buttonWidth)
            .padding(6)
            .onTapGesture {
                print("hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
