//
//  Back.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 10.09.2023.
//

import SwiftUI

struct Back: View {
    var body: some View {
        Image(systemName: "chevron.backward")
            .font(.system(size: 23))
            .padding()
            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
    }
}

struct Back_Previews: PreviewProvider {
    static var previews: some View {
        Back()
    }
}
