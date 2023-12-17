//
//  ContentView.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

//if(languageDB[0].language ?? "Qazaqsha" == "English"){
//    
//}
//else if(languageDB[0].language ?? "Qazaqsha" == "Қазақша"){
//    
//}
//else{
//    
//}

import SwiftUI
import Combine


struct ContentView: View {
    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
    @Environment(\.managedObjectContext) var moc
    
   
    
    var languages = ["Qazaqsha","Қазақша","English"]
    @State var indexLang = 0
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(red: 0.77, green: 0.87, blue: 1).ignoresSafeArea()
                    .opacity(0.8)
                VStack {
                    ZStack{
                        
                        if(languages[indexLang] == "English"){
                            TelzhanLanguageMenu(text: "TELZHAN")
                        }
                        else if(languages[indexLang] == "Қазақша"){
                            TelzhanLanguageMenu(text: "ТЕЛЖАН")
                        }
                        else{
                            TelzhanLanguageMenu(text: "TELJAN")
                        }
                        
                        HStack{
                            Spacer()
                            Menu(content: {
                                Picker("", selection: $indexLang, content: {
                                    ForEach(0..<languages.count){ i in
                                        Text(languages[i])
                                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                            .onTapGesture {
                                                indexLang = i
                                                saveLanguage()
                                            }
                                    }
                                })                           
                                .onReceive(Just(indexLang)) { _ in
                                    saveLanguage()
                                }
                            }, label: {
                                Image(systemName: "line.3.horizontal")
                                    .font(.system(size: 25))
                                    .padding()
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            })
                            
                        }
                    }
                    Spacer()
                    if(languages[indexLang] == "English"){
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: true), label: {Button1Page(text: "Flashcards")})
                        
                        NavigationLink(destination: Page3Translator(), label: {Button1Page(text: "Converter")})
                        
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: false), label: {Button1Page(text: "Vocabulary")})
                        
                        NavigationLink(destination: Page1Alphabet(title: "Latin Kazakh alphabet"), label: {Button1Page(text: "Latin Kazakh alphabet")})
                        
                        NavigationLink(destination: Page4AboutApp(), label: {Button1Page(text: "App’s info")})
                        
                        
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width: 350, height: 71)
//                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
//                                .opacity(0.5)
//                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
//                            HStack{
//                                Text("TELZHAN")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                                Text("PRO")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.9, green: 0.13, blue: 0.13))
//                                
//                            }
//                                
//                        }.frame(width: 350, height: 90)
                        
                    }
                    else if(languages[indexLang] == "Қазақша"){
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: true), label: {Button1Page(text: "Флэшкарталар")})
                        
                        NavigationLink(destination: Page3Translator(), label: {Button1Page(text: "Конвертер")})
                        
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: false), label: {Button1Page(text: "Сөздік")})
                        
                        NavigationLink(destination: Page1Alphabet(title: "Латын қазақ әліпбиі"), label: {Button1Page(text: "Латын қазақ әліпбиі")})
                        
                        NavigationLink(destination: Page4AboutApp(), label: {Button1Page(text: "Қосымша туралы ақпарат")})
                        
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width: 350, height: 71)
//                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
//                                .opacity(0.5)
//                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
//                            HStack{
//                                Text("ТЕЛЖАН")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                                Text("PRO")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.9, green: 0.13, blue: 0.13))
//
//                            }
//
//                        }.frame(width: 350, height: 90)
                        
                    }
                    else {
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: true), label: {Button1Page(text: "Flashqartalar")})
                        
                        NavigationLink(destination: Page3Translator(), label: {Button1Page(text: "Konverter")})
                        
                        NavigationLink(destination: Page2DictionaryGenerator(isGenerator: false), label: {Button1Page(text: "Sözdık")})
                        
                        NavigationLink(destination: Page1Alphabet(title: "Latyn qazaq älıpbiı"), label: {Button1Page(text: "Latyn qazaq älıpbiı")})
                        
                        NavigationLink(destination: Page4AboutApp(), label: {Button1Page(text: "Qosımsha turalı aqparat")})
                        
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width: 350, height: 71)
//                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
//                                .opacity(0.5)
//                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
//                            HStack{
//                                Text("TELJAN")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                                Text("PRO")
//                                    .font(.system(size: 23))
//                                    .foregroundColor(Color(red: 0.9, green: 0.13, blue: 0.13))
//
//                            }
//
//                        }.frame(width: 350, height: 90)
                    }
                    Spacer()
                    Spacer()
                }
                .padding()
            }.accessibilityHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
                .accessibilityLabel(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
        }.navigationBarBackButtonHidden()
            .navigationViewStyle(.stack)
        .task {
            await firstLanguage()
        }
    }
    
    func saveLanguage() {
        if languageDB.isEmpty{
            let lang = Language(context: moc)
            lang.language = languages[indexLang]
        }
        else{
            languageDB[0].language = languages[indexLang]
        }
        try? moc.save()
        print(languageDB[0].language ?? "----")
    }
    
    func firstLanguage() async {
        if languageDB.isEmpty{
            let lang = Language(context: moc)
            lang.language = languages[indexLang]
        }
        else{
            indexLang = languages.firstIndex(of: languageDB[0].language ?? "Qazaqsha") ?? 0
        }
        try? moc.save()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
