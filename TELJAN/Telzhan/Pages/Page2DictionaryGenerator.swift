//
//  Page2DictionaryGenerator.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI

struct Page2DictionaryGenerator: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
    @Environment(\.managedObjectContext) var moc
    
    @State var isGenerator: Bool
    var body: some View {
        ZStack{
            Color(red: 0.77, green: 0.87, blue: 1).ignoresSafeArea()
                .opacity(0.8)
            VStack {
                
                //TelzhanLanguageMenu()
                HStack{
                    Spacer()
                        .toolbar(content: {
                            ToolbarItem(placement: .navigationBarLeading, content: {
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss ()
                                }, label: {Back()})
                            })
                        })
                    Spacer()
                    
                }
                if(isGenerator){
                    if(languageDB[0].language ?? "Qazaqsha" == "English"){
                        Text("Flashcards")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(1), title: "Сognates", task: "Write a sentence with this word(s)."), label: {Button1Page(text: "Сognates") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(2), title: "Untranslatable kazakh words", task: "Write associations to the given word(s)."), label: {Button1Page(text: "Untranslatable kazakh words") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(3), title: "Untranslatable english words", task: "Write associations to the given word(s)."), label: {Button1Page(text: "Untranslatable english words") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(4), title: "Phraseological units, idioms", task: "Come up with a situation in which you can use this phraseology / idiom."), label: {Button1Page(text: "Phraseological units, idioms") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(5), title: "Modern/New Kazakh words", task: "Write a sentence with this word(s)."), label: {Button1Page(text: "Modern/New Kazakh words") })
                        

                        Spacer()
                    }
                    else if(languageDB[0].language ?? "Qazaqsha" == "Қазақша"){
                        Text("Флэшкарталар")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(1), title: "Когнаттар", task: "Осы сөзбен сөйлем жазыңыз."), label: {Button1Page(text: "Когнаттар") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(2), title: "Аударылмайтын қазақ сөздері", task: "Берілген сөзбен бірлестіктер жазыңыз."), label: {Button1Page(text: "Аударылмайтын қазақ сөздері") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(3), title: "Аударылмайтын ағылшын сөздері", task: "Берілген сөзбен бірлестіктер жазыңыз."), label: {Button1Page(text: "Аударылмайтын ағылшын сөздері") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(4), title: "Фразеологизмдер, идиомдар", task: "Осы фразеологизмді / идиоманы қолдануға болатын жағдайды ойлаңыз."), label: {Button1Page(text: "Фразеологизмдер, идиомдар") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(5), title: "Қазіргі/Жаңа қазақ сөздері", task: "Осы сөзбен сөйлем жазыңыз."), label: {Button1Page(text: "Қазіргі/Жаңа қазақ сөздері") })

                        Spacer()
                    }
                    else{
                        Text("Flashqartalar")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(1), title: "Kognattar", task: "Osy sözben söylem jazıñız."), label: {Button1Page(text: "Kognattar") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(2), title: "Audarylmaityn qazaq sözderı", task: "Berilgen sözben bіrlestіkter jazıñız."), label: {Button1Page(text: "Audarylmaityn qazaq sözderı") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(3), title: "Audarylmaityn ağylşyn sözderı", task: "Berilgen sözben bіrlestіkter jazıñız."), label: {Button1Page(text: "Audarylmaityn ağylşyn sözderı") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(4), title: "Frazeologizmder, idiomdar", task: "Osı frazeologizmdi / idïomanı qoldanwǵa bolatın jaǵdaydı oılańız."), label: {Button1Page(text: "Frazeologizmder, idiomdar") })
                        
                        NavigationLink(destination: Page2_2Generator(category: .constant(5), title: "Qazırgı/Jaña qazaq sözderı", task: "Osy sözben söylem jazıñız."), label: {Button1Page(text: "Qazırgı/Jaña qazaq sözderı") })
                        
                        Spacer()
                    }
                }
                else{
                    
                    if(languageDB[0].language ?? "Qazaqsha" == "English"){
                        Text("Vocabulary")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(1), title: "Сognates"), label: {Button1Page(text: "Сognates") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(2), title: "Untranslatable kazakh words"), label: {Button1Page(text: "Untranslatable kazakh words") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(3), title: "Untranslatable english words"), label: {Button1Page(text: "Untranslatable english words") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(4), title: "Phraseological units, idioms"), label: {Button1Page(text: "Phraseological units, idioms") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(5), title: "Modern/New Kazakh words"), label: {Button1Page(text: "Modern/New Kazakh words") })
                        

                        Spacer()
                    }
                    else if(languageDB[0].language ?? "Qazaqsha" == "Қазақша"){
                        Text("Сөздік")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(1), title: "Когнаттар"), label: {Button1Page(text: "Когнаттар") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(2), title: "Аударылмайтын қазақ сөздері"), label: {Button1Page(text: "Аударылмайтын қазақ сөздері") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(3), title: "Аударылмайтын ағылшын сөздері"), label: {Button1Page(text: "Аударылмайтын ағылшын сөздері") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(4), title: "Фразеологизмдер, идиомдар"), label: {Button1Page(text: "Фразеологизмдер, идиомдар") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(5), title: "Қазіргі/Жаңа қазақ сөздері"), label: {Button1Page(text: "Қазіргі/Жаңа қазақ сөздері") })

                        Spacer()
                    }
                    else{
                        Text("Sözdık")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        Spacer()
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(1), title: "Kognattar"), label: {Button1Page(text: "Kognattar") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(2), title: "Audarylmaityn qazaq sözderı"), label: {Button1Page(text: "Audarylmaityn qazaq sözderı") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(3), title: "Audarylmaityn ağylşyn sözderı"), label: {Button1Page(text: "Audarylmaityn ağylşyn sözderı") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(4), title: "Frazeologizmder, idiomdar"), label: {Button1Page(text: "Frazeologizmder, idiomdar") })
                        
                        NavigationLink(destination: Page2_1Dictionary(category: .constant(5), title: "Qazırgı/Jaña qazaq sözderı"), label: {Button1Page(text: "Qazırgı/Jaña qazaq sözderı") })
                        
                        Spacer()
                    }
                    
                }
                Spacer()
                
            }
            .padding()
        }.navigationBarBackButtonHidden()
    }
}

struct Page2DictionaryGenerator_Previews: PreviewProvider {
    static var previews: some View {
        Page2DictionaryGenerator(isGenerator: true)
    }
}
