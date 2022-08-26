//
//  ContentView.swift
//  GeometryReaderChallenge
//
//  Created by Micah Beech on 2021-02-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {

            GeometryReader { geometry in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("Width: \(geometry.size.width), Height: \(geometry.size.height)")
                    }

                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geometry.size.width * 2 / 3, height: geometry.size.height / 4)
                    .padding(.leading, geometry.size.width / 6)
                    .padding(.top, geometry.size.height * 3 / 8)
                    .onTapGesture {
                        print("Width: \(geometry.size.width * 2 / 3), Height: \(geometry.size.height / 4)")
                    }
            }

            GeometryReader { geometry in
                
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geometry.size.width / 2)
                    .onTapGesture {
                        print("Width: \(geometry.size.width / 2), Height: \(geometry.size.height)")
                    }
                
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: geometry.size.width / 2)
                    .padding(.leading, geometry.size.width / 2)
                    .onTapGesture {
                        print("Width: \(geometry.size.width / 2), Height: \(geometry.size.height)")
                    }
                
            }

        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
