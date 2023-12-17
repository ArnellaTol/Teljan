//
//  CheckButton.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 17.09.2023.
//

import SwiftUI

struct CheckButton: View {
    @State var check: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 155, height: 45)
                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                .opacity(0.5)
                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
            Text(check)
                .font(.system(size: 23))
                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
        }
    }
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckButton(check: "Check")
    }
}
