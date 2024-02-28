//
//  GPT_Test.swift
//  TELJAN
//
//  Created by Arnella Tolegen on 03.12.2023.
//

import SwiftUI

//struct GPT_Test: View {
//    var languages = ["Qazaqsha","Қазақша","English"]
//    @State var indexLang1 = 1
//    @State var indexLang2 = 0
//    
//    @State var input: String = ""
//    @State var output: String = ""
//    
//    
//    let openAIService = OpenAIService1()
//    
//    var body: some View {
//        ZStack{
//            Color(red: 0.77, green: 0.87, blue: 1).ignoresSafeArea()
//                .opacity(0.8)
//            VStack{
//                //TelzhanLanguageMenu()
//                
//                
//                HStack{
//                    Menu(content: {
//                        Picker("", selection: $indexLang1, content: {
//                            ForEach(0..<languages.count){ i in
//                                Text(languages[i])
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                            }
//                        })
//                    }, label: {
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width: 120, height: 45)
//                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
//                                .opacity(0.5)
//                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
//                            Text(languages[indexLang1])
//                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                        }
//                    })
//                    
//                    Image(systemName: "arrow.right")
//                        .font(.system(size: 20))
//                        .padding()
//                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                    
//                    Menu(content: {
//                        Picker("", selection: $indexLang2, content: {
//                            ForEach(0..<languages.count){ i in
//                                Text(languages[i])
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                            }
//                        })
//                    }, label: {
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 8)
//                                .frame(width: 120, height: 45)
//                                .foregroundColor(Color(red: 0.11, green: 0.32, blue: 0.57))
//                                .opacity(0.5)
//                                .shadow(color: Color(red: 0.03, green: 0.13, blue: 0.25), radius: 5)
//                            Text(languages[indexLang2])
//                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                        }
//                    })
//                }.padding()
//                
//                
//                
//                HStack{
//                    Spacer()
//                    Button(action: {
//                        input = ""
//                        output = ""
//                    }) {
//                        Image(systemName: "xmark")
//                            .font(.system(size: 20))
//                            .foregroundColor(Color(red: 0.9, green: 0.13, blue: 0.13))
//                    }
//                }.frame(width: 350, height: 20)
//                
//                ZStack{
//                    RoundedRectangle(cornerRadius: 5)
//                        .frame(width: 350, height: 190)
//                        .foregroundColor(.white)
//                        .shadow(radius: 5)
//                    
//                    TextEditor(text: $input)
//                        .background(Color(.white))
//                        .cornerRadius(5)
//                        .frame(width: 350, height: 190)
//                        .disableAutocorrection(true)
//                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                }.frame(width: 350, height: 190)
//                
//                ZStack{
//                    Button(action: {
//                        
//                        
//                        // qaz to kaz
//                        if(indexLang1==0 && indexLang2==1){
//                            
//                        }
//                        
//                        // kaz to eng
//                        if(indexLang1==1 && indexLang2==2){
//                            openAIService.sendMessage(message: "Translate this text from Kazakh to English language: \(input)")
//                        }
//                        
//                        // eng to kaz
//                        if(indexLang1==2 && indexLang2==1){
//                            openAIService.sendMessage(message: "Translate this text from English to Kazakh language: \(input)")
//                        }
//                        
//                        // qaz to eng
//                        if(indexLang1==0 && indexLang2==2){
//                            
//                        }
//                        
//                        // eng to qaz
//                        if(indexLang1==2 && indexLang2==0){
//                            
//                        }
//                        
//                    }, label: {
//                        ButtonArrowDown()
//                    })
//                    
//
//                    VStack{
//                        Spacer()
//                        HStack{
//                            Spacer()
//                            Button(action: {
//                                UIPasteboard.general.string = output
//                            }) {
//                                Image(systemName: "rectangle.portrait.on.rectangle.portrait")
//                                    .font(.system(size: 20))
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                                    .scaleEffect(x: 1, y: -1)
//                            }
//                        }.frame(width: 350)
//                    }.frame(width: 350, height: 60)
//                }
//                
//                ZStack{
//                    RoundedRectangle(cornerRadius: 5)
//                        .frame(width: 350, height: 190)
//                        .foregroundColor(.white)
//                        .shadow(radius: 5)
//                        
//                    ScrollView{
//                        Text(output)
//                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                            .frame(width: 340, alignment: .leading)
//                            .padding(7)
//                    }.frame(width: 350, height: 188)
//                    
//                }.frame(width: 350, height: 190)
//                
//                
//                
//                
//                Spacer()
//            }
//        }.navigationBarBackButtonHidden()
//            .onAppear{
//                openAIService.sendMessage(message: "Translate this text from Kazakh to English language: ")
//            }
//    }
//    
//    
//}
//
//struct GPT_Test_Previews: PreviewProvider {
//    static var previews: some View {
//        GPT_Test()
//    }
//}
//
//
//
