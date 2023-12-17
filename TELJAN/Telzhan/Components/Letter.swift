//
//  Letter.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 17.09.2023.
//

import SwiftUI

struct Letter: View {
    @State var letter: String
    @State var words: [String]
    @State var red: Bool
    var body: some View {
        Menu(content: {
            ForEach(0..<words.count){ i in
                Text(words[i])
                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                
            }
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 55, height: 55)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                Text(letter)
                    .font(.system(size: 21))
                    .foregroundColor(red ? Color(red: 0.9, green: 0.13, blue: 0.13) : Color(red: 0.03, green: 0.13, blue: 0.25))
            }.frame(width: 55, height: 55)
        })
        
        
    }
}

struct Letter_Previews: PreviewProvider {
    static var previews: some View {
        Letter(letter: "Aa", words: ["Apple"], red: true)
    }
}
