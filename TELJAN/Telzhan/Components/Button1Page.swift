//
//  Button1Page.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI

struct Button1Page: View {
    @State var text: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 350, height: 71)
                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                .opacity(0.5)
                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
            Text(text)
                .font(.system(size: 23))
                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                
        }.frame(width: 350, height: 90)
            
    }
}

struct Button1Page_Previews: PreviewProvider {
    static var previews: some View {
        Button1Page(text: "Kазахский алфавит на латинице")
    }
}
