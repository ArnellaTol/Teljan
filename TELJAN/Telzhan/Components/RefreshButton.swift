//
//  RefreshButton.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 17.09.2023.
//

import SwiftUI

struct RefreshButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 55, height: 55)
                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                .opacity(0.5)
                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
           Image(systemName: "arrow.counterclockwise")
                .font(.system(size: 26))
                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                
        }
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton()
    }
}
