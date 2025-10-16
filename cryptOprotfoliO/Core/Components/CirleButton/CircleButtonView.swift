//
//  CircleButtonView.swift
//  cryptOprotfoliO
//
//  Created by Abhoy Prasad Shah on 23/06/24.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName : String
    var body: some View {
        Image (systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50 , height: 50)
            .background(Circle().foregroundColor(Color.theme.background))
            .shadow(color : Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 0)
        
    }
}

#Preview {
    Group {
        CircleButtonView(iconName: "info")
            .padding()
            .previewLayout(.sizeThatFits)
        CircleButtonView(iconName: "plus")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
