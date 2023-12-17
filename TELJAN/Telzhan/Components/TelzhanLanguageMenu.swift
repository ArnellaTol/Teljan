//
//  TelzhanLanguageMenu.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI

struct TelzhanLanguageMenu: View {
//    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
//    @Environment(\.managedObjectContext) var moc
//
//    var languages = ["Qazaqsha","Қазақша","English"]
//    @State var indexLang = 0
    var text: String
    var body: some View {
        
        ZStack{
            HStack{
                Text(text)
                    .font(.system(size: 30))
                    .bold()
                    .padding()
                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
            }
//            HStack{
//                Spacer()
//                Menu(content: {
//                    Picker("", selection: $indexLang, content: {
//                        ForEach(0..<languages.count){ i in
//                            Text(languages[i])
//
//                        }
//                    })
//                    .onChange(of: indexLang) { newValue in
//                                saveLanguage()
//                            }
//                }, label: {
//                    Image(systemName: "line.3.horizontal")
//                        .font(.system(size: 25))
//                        .padding()
//                })
//
//            }
        }
//        .task {
//            await firstLanguage()
//        }
        
    }
//    func saveLanguage() {
//        if languageDB.isEmpty{
//            let lang = Language(context: moc)
//            lang.language = languages[indexLang]
//        }
//        else{
//            languageDB[0].language = languages[indexLang]
//        }
//        try? moc.save()
//        print(languages[indexLang])
//    }
//
//    func firstLanguage() async {
//        if languageDB.isEmpty{
//            let lang = Language(context: moc)
//            lang.language = languages[indexLang]
//        }
//        else{
//            indexLang = languages.firstIndex(of: languageDB[0].language ?? "Qazaqsha") ?? 0
//        }
//        try? moc.save()
//    }
}

struct TelzhanLanguageMenu_Previews: PreviewProvider {
    static var previews: some View {
        TelzhanLanguageMenu(text: "TELJAN")
    }
}
