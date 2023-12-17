//
//  ButtonArrowDown.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 13.10.2023.
//

import SwiftUI

struct ButtonArrowDown: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 70, height: 50)
                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                .opacity(0.5)
                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)

            Image(systemName: "arrow.down")
                .font(.system(size: 20))
                .padding()
                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
        }.frame(width: 55, height: 55)
            .padding()
    }
}

struct ButtonArrowDown_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArrowDown()
    }
}
