//
//  ContentView.swift
//  Swift_UI_1
//
//  Created by Riti Sinha on 01/08/23.
//  Modifiers wrap a view to change its display or other properties. Each modifier returns a new view, so it’s common to chain multiple modifiers, stacked vertically.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Tokoyo")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .padding(-1)
                HStack {
                    Text("Japan")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    Spacer() // creates spaces between the stack texts or items
                    Text("Asia")
                        .font(.subheadline)
                        .fontWeight(.medium)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                Text("Jujutsu Kaisen")
                    .font(.title)
                Text("gojo sensei")
                    .font(.headline)
            }
            .padding()
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
