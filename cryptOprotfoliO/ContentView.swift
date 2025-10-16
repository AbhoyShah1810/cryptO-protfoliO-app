//
//  ContentView.swift
//  cryptOprotfoliO
//
//  Created by Abhoy Prasad Shah on 23/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("AccentColor")
                    .foregroundStyle(Color.theme.accent)
                Text("SecondaryColor")
                    .foregroundStyle(Color.theme.SecondaryTextColor)
                Text("RedColor")
                    .foregroundStyle(Color.theme.red)
                Text("greenColor")
                    .foregroundStyle(Color.theme.green)
            }
        }
    }
}

struct ContentView_preview: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
