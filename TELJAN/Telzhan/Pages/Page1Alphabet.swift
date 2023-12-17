//
//  Page1Alphabet.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 10.09.2023.
//

import SwiftUI

struct Page1Alphabet: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
    @Environment(\.managedObjectContext) var moc
    @State var title: String
    var body: some View {
        ZStack{
            Color(red: 0.77, green: 0.87, blue: 1).ignoresSafeArea()
                .opacity(0.8)
            VStack{
                
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
                
                Text(title)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                Spacer()
                HStack{
                    Letter(letter: "Aa", words: ["Ainalaiyn"], red: false)
                }
                Group{
                    HStack{
                        Letter(letter: "Ää", words: ["Äuez"], red: true).padding()
                        Letter(letter: "Bb", words: ["Bauyrym"], red: false)
                        Letter(letter: "Dd", words: ["Dala"], red: false).padding()
                        Letter(letter: "Ee", words: ["Esіmde"], red: false)
                        Letter(letter: "Ff", words: ["Faktor"], red: false).padding()
                    }
                    HStack{
                        Letter(letter: "Gg", words: ["Gulder"], red: false).padding(.horizontal)
                        Letter(letter: "Ğğ", words: ["Ğojaq"], red: true)
                        Letter(letter: "Hh", words: ["Halyk"], red: false).padding(.horizontal)
                        Letter(letter: "İi", words: ["Izdeu"], red: true)
                        Letter(letter: "Iı", words: ["İstifadə"], red: true).padding(.horizontal)
                    }
                    HStack{
                        Letter(letter: "Jj", words: ["Jastar"], red: false).padding()
                        Letter(letter: "Kk", words: ["Köpkez"], red: false)
                        Letter(letter: "Ll", words: ["Lager"], red: false).padding()
                        Letter(letter: "Mm", words: ["Mugalyim"], red: false)
                        Letter(letter: "Nn", words: ["Naızağay"], red: false).padding()
                    }
                    HStack{
                        Letter(letter: "Ññ", words: ["Ñöñ"], red: true).padding(.horizontal)
                        Letter(letter: "Oo", words: ["Orman"], red: false)
                        Letter(letter: "Öö", words: ["Öten"], red: true).padding(.horizontal)
                        Letter(letter: "Pp", words: ["Pisiru"], red: false)
                        Letter(letter: "Qq", words: ["Qalmaq"], red: false).padding(.horizontal)
                    }
                    HStack{
                        Letter(letter: "Rr", words: ["Rüstem"], red: false).padding()
                        Letter(letter: "Ss", words: ["Saukele"], red: false)
                        Letter(letter: "Şş", words: ["Şaqira"], red: true).padding()
                        Letter(letter: "Tt", words: ["Tükenmek"], red: false)
                        Letter(letter: "Uu", words: ["Ulytau"], red: false).padding()
                    }
                    HStack{
                        Letter(letter: "Ūū", words: ["Ūyq"], red: true).padding(.horizontal)
                        Letter(letter: "Üü", words: ["Üzіt"], red: true)
                        Letter(letter: "Vv", words: ["Viza"], red: false).padding(.horizontal)
                        Letter(letter: "Yy", words: ["Yssyk"], red: false)
                        Letter(letter: "Zz", words: ["Zhangy"], red: false).padding(.horizontal)
                    }
                }
                Spacer()
            }
        }.navigationBarBackButtonHidden()
    }
}

struct Page1Alphabet_Previews: PreviewProvider {
    static var previews: some View {
        Page1Alphabet(title: "Латинский казахский алфавит")
    }
}
