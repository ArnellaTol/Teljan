//
//  Page3Translator.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI
import Combine

struct Page3Translator: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
    @Environment(\.managedObjectContext) var moc
    
    var languages = ["Qazaqsha","Қазақша","English"]
    @State var indexLang1 = 1
    @State var indexLang2 = 0
    
    @State var input: String = ""
    @State var output: String = ""
    @State var output2: String = ""
    
    let openAIService = OpenAIService1()
    
    @State var cancellables = Set<AnyCancellable>()
    
    var body: some View {
        ZStack{
            Color(red: 0.77, green: 0.87, blue: 1).ignoresSafeArea()
                .opacity(0.8)
            VStack{
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
                
                if(languageDB[0].language ?? "Qazaqsha" == "English"){
                    Text("Converter")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        
                }
                else if(languageDB[0].language ?? "Qazaqsha" == "Қазақша"){
                    Text("Конвертер")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                }
                else{
                    Text("Konverter")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                }
                
                
                HStack{
                    Menu(content: {
                        Picker("", selection: $indexLang1, content: {
                            ForEach(0..<languages.count){ i in
                                Text(languages[i])
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            }
                        })
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 120, height: 45)
                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                                .opacity(0.5)
                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
                            Text(languages[indexLang1])
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        }
                    })
                    
                    Image(systemName: "arrow.right")
                        .font(.system(size: 20))
                        .padding()
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                    
                    Menu(content: {
                        Picker("", selection: $indexLang2, content: {
                            ForEach(0..<languages.count){ i in
                                Text(languages[i])
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            }
                        })
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 120, height: 45)
                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
                                .opacity(0.5)
                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
                            Text(languages[indexLang2])
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                        }
                   })
                }.padding()
                
                
                
                HStack{
                    Spacer()
                    Button(action: {
                        input = ""
                        output = ""
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.9, green: 0.13, blue: 0.13))
                    }
                }.frame(width: 350, height: 20)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 350, height: 190)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    TextEditor(text: $input)
                        .background(Color(.white))
                        .cornerRadius(5)
                        .frame(width: 350, height: 190)
                        .disableAutocorrection(true)
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                }.frame(width: 350, height: 190)
                
                ZStack{
                    Button(action: {
                        //Translate this text from English to Kazakh language
                        //
                        
                        // kaz to qaz
                        if(indexLang1==1 && indexLang2==0){
                            translateKZtoQZ()
                        }
                        
                        // qaz to kaz
                        if(indexLang1==0 && indexLang2==1){
                            let userPrompt = "А - A, Ә - Ä, Б - B, В - V, Г - G, Ғ - Ğ, Д - D, Е - E, Ё - Ö, Ж - J, З - Z, И - İ, Й - İ, К - K, Қ - Q, Л - L, М - M, Н - N, Ң - Ñ, О - O, Ө - Ö, П - P, Р - R, С - S, Т - T, У - U, Ұ - Ū, Ү - Ü, Ф - F, Х - H, Һ - H, Ц - S, Ч - Ch, Ш - Ş, Щ - Ş, Ъ - , Ы - Y, І - I, Ь - , Э - E, Ю - İu, Я - İa, а - a, ә - ä, б - b, в - v, г - g, ғ - ğ, д - d, е - e, ё - ö, ж - j, з - z, и - i, й - i, к - k, қ - q, л - l, м - m, н - n, ң - ñ, о - o, ө - ö, п - p, р - r, с - s, т - t, у - u, ұ - ū, ү - ü, ф - f, х - h, һ - h, ц - s, ч - ch, ш - ş, щ - ş, ъ - , ы - y, і - i, ь - , э - e, ю - iu, я - ia. Осы әріптер тізімін пайдалана отырып, мәтінді қазақ тілінің латын тілінен қазақ тілінің кириллицасына аударыңыз: \(input)"
                            
                            OpenAIService1.generateResponse(for: userPrompt) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }
                            
                        }

                        // kaz to eng
                        if(indexLang1==1 && indexLang2==2){
                            let userPrompt = "Мәтінді қазақ тілінен ағылшын тіліне аудар: '\(input)'"

                            OpenAIService1.generateResponse(for: userPrompt) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }
                            
                        }

                        // eng to kaz
                        if(indexLang1==2 && indexLang2==1){
                            
                            let userPrompt = "мәтіннің ағылшын тілінен қазақ тіліне толық аудармасын ғана беріңіз: '\(input)'"

                            OpenAIService1.generateResponse(for: userPrompt) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }

                        }

                        // qaz to eng
                        if(indexLang1==0 && indexLang2==2){
                            let userPrompt = "А - A, Ә - Ä, Б - B, В - V, Г - G, Ғ - Ğ, Д - D, Е - E, Ё - Ö, Ж - J, З - Z, И - İ, Й - İ, К - K, Қ - Q, Л - L, М - M, Н - N, Ң - Ñ, О - O, Ө - Ö, П - P, Р - R, С - S, Т - T, У - U, Ұ - Ū, Ү - Ü, Ф - F, Х - H, Һ - H, Ц - S, Ч - Ch, Ш - Ş, Щ - Ş, Ъ - , Ы - Y, І - I, Ь - , Э - E, Ю - İu, Я - İa, а - a, ә - ä, б - b, в - v, г - g, ғ - ğ, д - d, е - e, ё - ö, ж - j, з - z, и - i, й - i, к - k, қ - q, л - l, м - m, н - n, ң - ñ, о - o, ө - ö, п - p, р - r, с - s, т - t, у - u, ұ - ū, ү - ü, ф - f, х - h, һ - h, ц - s, ч - ch, ш - ş, щ - ş, ъ - , ы - y, і - i, ь - , э - e, ю - iu, я - ia. Осы әріптер тізімін пайдалана отырып, мәтінді қазақ тілінің латын тілінен қазақ тілінің кириллицасына аударыңыз: '\(input)'"
                            
                            OpenAIService1.generateResponse(for: userPrompt) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output2 = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }
                            
                            let userPrompt2 = "Мәтінді қазақ тілінен ағылшын тіліне аудар: '\(output2)'"
                            
                            
                            OpenAIService1.generateResponse(for: userPrompt2) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }
                            
                        }

                        // eng to qaz
                        if(indexLang1==2 && indexLang2==0){
                            
                            let userPrompt = "Түпнұсқа мәтінді толтырмай, мәтіннің ағылшын тілінен қазақ тіліне толық аудармасын ғана беріңіз: '\(input)'"

                            OpenAIService1.generateResponse(for: userPrompt) { result in
                                switch result {
                                case .success(let response):
                                    print("Generated response: \(response)")
                                    output = response
                                case .failure(let error):
                                    print("Error: \(error)")
                                }
                            }
                            
                            translateKZtoQZ2()
                        }

                        
                    }, label: {
                        ButtonArrowDown()
                    })
                    

                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            Button(action: {
                                UIPasteboard.general.string = output
                            }) {
                                Image(systemName: "rectangle.portrait.on.rectangle.portrait")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .scaleEffect(x: 1, y: -1)
                            }
                        }.frame(width: 350)
                    }.frame(width: 350, height: 60)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 350, height: 190)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        
                    ScrollView{
                        Text(output)
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            .frame(width: 340, alignment: .leading)
                            .padding(7)
                    }.frame(width: 350, height: 188)
                    
                }.frame(width: 350, height: 190)
                
                Spacer()
            }
        }.navigationBarBackButtonHidden()
    }
    
    func translateKZtoQZ(){
        let sourceCharacters: [String] = ["А", "Ә", "Б", "В", "Г", "Ғ", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Қ", "Л", "М", "Н", "Ң", "О", "Ө", "П", "Р", "С", "Т", "У", "Ұ", "Ү", "Ф", "Х", "Һ", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "І", "Ь", "Э", "Ю", "Я", "а", "ә", "б", "в", "г", "ғ", "д", "е", "ё", "ж", "з", "и", "й", "к", "қ", "л", "м", "н", "ң", "о", "ө", "п", "р", "с", "т", "у", "ұ", "ү", "ф", "х", "һ", "ц", "ч", "ш", "щ", "ъ", "ы", "і", "ь", "э", "ю", "я"]

        let targetCharacters: [String] = ["A", "Ä", "B", "V", "G", "Ğ", "D", "E", "Ö", "J", "Z", "İ", "İ", "K", "Q", "L", "M", "N", "Ñ", "O", "Ö", "P", "R", "S", "T", "U", "Ū", "Ü", "F", "H", "H", "S", "Ch", "Ş", "Ş", "", "Y", "I", "", "E", "İu", "İa", "a", "ä", "b", "v", "g", "ğ", "d", "e", "ö", "j", "z", "i", "i", "k", "q", "l", "m", "n", "ñ", "o", "ö", "p", "r", "s", "t", "u", "ū", "ü", "f", "h", "h", "s", "ch", "ş", "ş", "", "y", "ı", "", "e", "iu", "ia"]
        
        var resultString = input
        
        for (sourceChar, targetChar) in zip(sourceCharacters, targetCharacters) {
            resultString = resultString.replacingOccurrences(of: String(sourceChar), with: String(targetChar))
        }

        output = resultString
    }
    
    func translateKZtoQZ2(){
        let sourceCharacters: [String] = ["А", "Ә", "Б", "В", "Г", "Ғ", "Д", "Е", "Ё", "Ж", "З", "И", "Й", "К", "Қ", "Л", "М", "Н", "Ң", "О", "Ө", "П", "Р", "С", "Т", "У", "Ұ", "Ү", "Ф", "Х", "Һ", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "І", "Ь", "Э", "Ю", "Я", "а", "ә", "б", "в", "г", "ғ", "д", "е", "ё", "ж", "з", "и", "й", "к", "қ", "л", "м", "н", "ң", "о", "ө", "п", "р", "с", "т", "у", "ұ", "ү", "ф", "х", "һ", "ц", "ч", "ш", "щ", "ъ", "ы", "і", "ь", "э", "ю", "я"]

        let targetCharacters: [String] = ["A", "Ä", "B", "V", "G", "Ğ", "D", "E", "Ö", "J", "Z", "İ", "İ", "K", "Q", "L", "M", "N", "Ñ", "O", "Ö", "P", "R", "S", "T", "U", "Ū", "Ü", "F", "H", "H", "S", "Ch", "Ş", "Ş", "", "Y", "I", "", "E", "İu", "İa", "a", "ä", "b", "v", "g", "ğ", "d", "e", "ö", "j", "z", "i", "i", "k", "q", "l", "m", "n", "ñ", "o", "ö", "p", "r", "s", "t", "u", "ū", "ü", "f", "h", "h", "s", "ch", "ş", "ş", "", "y", "ı", "", "e", "iu", "ia"]
        
        var resultString = output
        
        for (sourceChar, targetChar) in zip(sourceCharacters, targetCharacters) {
            resultString = resultString.replacingOccurrences(of: String(sourceChar), with: String(targetChar))
        }

        output = resultString
    }
    
    func translateQZtoKZ(_ text: String) -> String {
        var result = text
        let latinToCyrillicMap: [String: String] = [
            "A": "А", "Ä": "Ә", "B": "Б", "V": "В", "G": "Г", "Ğ": "Ғ", "D": "Д", "E": "Е", "Ö": "Ё", "J": "Ж", "Z": "З", "İ": "И", "Q": "Қ", "K": "К", "L": "Л", "M": "М", "N": "Н", "Ñ": "Ң", "O": "О", "Ö": "Ө", "P": "П", "R": "Р", "S": "С", "T": "Т", "U": "У", "Ū": "Ұ", "Ü": "Ү", "F": "Ф", "H": "Х", "Ch": "Ч", "Ş": "Ш", "Y": "Ы", "I": "І", "E": "Э", "İu": "Ю", "İa": "Я",
            "a": "а", "ä": "ә", "b": "б", "v": "в", "g": "г", "ğ": "ғ", "d": "д", "e": "е", "ö": "ё", "j": "ж", "z": "з", "i": "и", "q": "қ", "k": "к", "l": "л", "m": "м", "n": "н", "ñ": "ң", "o": "о", "ö": "ө", "p": "п", "r": "р", "s": "с", "t": "т", "u": "у", "ū": "ұ", "ü": "ү", "f": "ф", "h": "х", "ch": "ч", "ş": "ш", "": "ъ", "y": "ы", "ı": "і", "": "ь", "e": "э", "iu": "ю", "ia": "я"
        ]

        // Заменяем "İa" на "Я"
        result = result.replacingOccurrences(of: "İa", with: "Я")
        result = result.replacingOccurrences(of: "Ch", with: "Ч")
        // Заменяем остальные символы
        for (latin, cyrillic) in latinToCyrillicMap {
            result = result.replacingOccurrences(of: latin, with: cyrillic)
        }

        return result
    }


}

struct Page3Translator_Previews: PreviewProvider {
    static var previews: some View {
        Page3Translator()
    }
}
