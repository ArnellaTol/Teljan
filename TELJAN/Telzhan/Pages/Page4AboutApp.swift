//
//  Page4AboutApp.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 03.09.2023.
//

import SwiftUI

struct Page4AboutApp: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @FetchRequest(sortDescriptors: []) var languageDB: FetchedResults<Language>
    @Environment(\.managedObjectContext) var moc
    //eng
    var t11 = "The civilized world has long used Latin graphics. The Latin alphabet is used in more than 100 countries around the world. Turkey since 1929, Azerbaijan since 1992, Uzbekistan and Turkmenistan since 1993 have switched to the Latin alphabet.\n\nIn Kazakhstan, the Latin alphabet was used from 1929 to 1940. But due to the ideological policy of the Soviet regime, Kazakhstan was forced to switch to Cyrillic. In the twentieth century, Kazakhstan changed the alphabet three times (until 1929, Arabic graphics were used, from 1929-1940 the Latin alphabet, from 1940 the Cyrillic alphabet was used).\n\nCurrently, the transition to Latin graphics is designed to raise national identity and give additional impetus to the development of the Kazakh language.\n\nThe Telzhan mobile application was created to study the Kazakh language for English-speaking people, as well as for the convenience of perceiving the Kazakh language in Latin. The Telzhan mobile application will allow online users to master the Kazakh language in Latin, delve into the specifics of English and Kazakh languages.\n\nThe application is named after one of the professional Kazakh linguists of the early twentieth century, public figure, educational scientist and translator Telzhan Shonanov, author of more than 32 textbooks and 72 articles written in Latin. His merit is great in teaching the native language of people of other nationalities."
    
    var t12 = "Telzhan Shonanov was born in 1894 in the village number 4 of the Irgiz district of the Aktobe region into a peasant family. From 1908 to 1912 he studied at the Irgiz Russian-Kazakh school. Then (1912-1916) he continued his studies at the Kazakh Pedagogical Institute in Orenburg and at the Abai Kazakh National Pedagogical Institute in Almaty. In his student years, he actively participated in the work of the Igіlіk society, whose main activity was to educate Kazakh youth. It was published in the newspaper 'Қazaқ.'\n\nIn 1918, Shonanov, like most of the educated Kazakhs of his generation, joined the Alash Orda party, and in 1919 he, like his other party comrades, switched to Soviet positions. In 1921 he was arrested in Irgiz and was under investigation for 'anti-Soviet nationalist activities,' but in 1922 he was released and for the next 15 years he was not subjected to repression. He worked in educational bodies, first in Semipalatinsk, then in Orenburg.\n\nIn 1923 he became a member of the Society for the Study of the Kazakh Territory. Later he was elected chairman of the history and etno­grafii section of this association. In 1926 he participated in the All-Union Congress of Turkologists in Baku. At the end of the congress, he became a member of the republican committee for the propaganda of the Latin alphabet. During the period from 1923 to 1937 he wrote 32 textbooks, 72 articles.\n\nOn July 20, 1937, Shonanov was arrested, the investigation was carried out with great violations, the court passed an illegal verdict, Shonanov was found guilty of committing counter-revolutionary crimes and was shot on February 27, 1938.\n\nThe question of the rehabilitation of Telzhan Shonanov back in 1960, but he was rehabilitated only on September 18, 1992 for lack of corpus delicti."
    var t13 = ""
    var t14 = ""
    
    //Қазақша
    var t21 = "Өркениетті әлем латын графикасын бұрыннан пайдаланып келеді. Латын әліпбиі әлемнің 100-ден астам елінде қолданылады. Түркия 1929 жылдан бастап, Әзірбайжан 1992 жылдан бастап, Өзбекстан мен Түрікменстан 1993 жылдан бастап латын әліпбиіне көшті.\n\nҚазақстанда латын әліпбиі 1929 жылдан 1940 жылға дейін қолданылған. Бірақ кеңестік режимнің идеологиялық саясатына байланысты Қазақстан кириллицаға көшуге мәжбүр болды. ХХ ғасырда Қазақстан әліпбиді үш рет өзгертті (1929 жылға дейін араб графикасы, 1929-1940 жылдары латын, 1940 жылдан кириллица қолданылды).\n\nҚазіргі уақытта латын графикасына көшу ұлттық сана-сезімді көтеріп, қазақ тілінің дамуына қосымша серпін береді.\nTelzhan мобильді қосымшасы ағылшын тілін үйрену үшін, сондай-ақ қазақ тілін латын әліпбиінде қабылдау үшін жасалған. Telzhan мобильді қосымшасы пайдаланушыларға  он лайн режимінде қазақ тілін латын әліпбиімен меңгеруге, ағылшын және қазақ тілдерінің ерекшелігін тереңдетуге мүмкіндік береді.\n\nҚосымша ХХ ғасырдың басындағы кәсіби лингвист-қазақтардың бірі, қоғам қайраткері, ғалым-педагог және аудармашы Телжан Шонановтың, латын әліпбиінде жазылған 32-ден астам оқулықтар мен 72 мақалалардың авторы. Оның өзге ұлт өкілдерін ана тіліне үйретудегі еңбегі зор."
    
    var t22 = "Телжан Шонанов 1894 жылы Ақтөбе облысы Ырғыз ауданы № 4 ауылында шаруа отбасында дүниеге келген. 1908 жылдан 1912 жылға дейін ырғыз орыс-қазақ мектебінде оқыды. 1912-1916 жылдары Орынбордағы қазақ педагогикалық институтында және Алматыдағы Абай атындағы Қазақ ұлттық пединститутында оқуын жалғастырды. Студенттік жылдары «Игілік» қоғамының жұмысына белсене араласты, оның негізгі қызметі қазақ жастарын ағарту болды. «Қазақ» газетінде басылып шықты.\n\n1918 жылы Шонанов өз ұрпағының білімді қазақтарының көпшілігі ретінде «Алаш Орда» партиясына қосылды, ал 1919 жылы ол партиядағы басқа да жолдастары сияқты кеңестік позицияға өтті. 1921 жылы Ырғызда тұтқындалып, «ұлтшылдыққа қарсы қызметі» үшін тергеуде болды, алайда 1922 жылы оны босатып, 15 жылдан кейін қуғын-сүргінге ұшырамады. Алдымен Семейде, кейін Орынборда ағарту органдарында жұмыс істеді.\n\n1923 жылы Қазақ өлкесін зерттеу қоғамының құрамына кірді. Кейін осы бірлестіктің тарих және этнография секциясының төрағасы болып сайланды. 1926 жылы Бакуде өткен түркологтардың бүкілодақтық съезіне қатысты. Съезд аяқталғаннан кейін латын әліпбиін насихаттау жөніндегі республикалық комитеттің құрамына кірді. 1923 жылдан 1937 жылға дейін 32 оқулық, 72 мақала жазды.\n\n1937 жылы 20 шілдеде Шонанов тұтқындалды, тергеу үлкен заң бұзушылықтармен жүргізілді, сот заңсыз үкім шығарды, Шонанов қарсы революцияға қарсы қылмыстар жасағаны үшін кінәлі деп танылып, 1938 жылы 27 ақпанда атылды.\n\nТелжан Шонановты оңалту мәселесі 1960 жылы, бірақ ол тек 1992 жылы 18 қыркүйекте қылмыс құрамының жоқтығынан ақталды."
    var t23 = ""
    var t24 = ""
    
    //qas
    var t31 = "Örkeniettı älem latyn grafikasyn būrynnan paidalanyp keledı. Latyn älıpbiı älemnıñ 100-den astam elınde qoldanylady. Türkia 1929 jyldan bastap, Äzırbaijan 1992 jyldan bastap, Özbekstan men Türıkmenstan 1993 jyldan bastap latyn älıpbiıne köştı.\n\nQazaqstanda latyn älıpbiı 1929 jyldan 1940 jylğa deiın qoldanylğan. Bıraq keñestık rejimnıñ ideologialyq saiasatyna bailanysty Qazaqstan kirilisağa köşuge mäjbür boldy.  XX ğasyrda Qazaqstan älıpbidı üş ret özgerttı (1929 jylğa deiın arab grafikasy, 1929-1940 jyldary latyn, 1940 jyldan kirilisa qoldanyldy).\n\nQazırgı uaqytta latyn grafikasyna köşu ūlttyq sana-sezımdı köterıp, qazaq tılınıñ damuyna qosymşa serpın beredı.\n\nTelzhan mobildı qosymşasy ağylşyn tılın üirenu üşın, sondai-aq qazaq tılın latyn älıpbiınde qabyldau üşın jasalğan. Telzhan mobildı qosymşasy paidalanuşylarğa  on lain rejimınde qazaq tılın latyn älıpbiımen meñgeruge, ağylşyn jäne qazaq tılderınıñ erekşelıgın tereñdetuge mümkındık beredı.\n\nQosymşa XX ğasyrdyñ basyndağy käsıbi lingvis-qazaqtardyñ bırı, qoğam qairatkerı, ğalym-pedagog jäne audarmaşy Teljan Şonanovtyñ, latyn älıpbiınde jazylğan 32-den astam oqulyqtar men 72 maqalalardyñ avtory. Onyñ özge ūlt ökılderın ana tılıne üiretudegı eñbegı zor."
   
    var t32 = "Telzhan Şonanov 1894 jyly Aqtöbe oblysy Yrğyz audany № 4 auylynda şarua otbasynda düniege kelgen. 1908 jyldan 1912 jylğa deiın yrğyz orys-qazaq mektebınde oqydy. 1912-1916 jyldary Orynbordağy qazaq pedagogikalyq institutynda jäne Almatydağy Abai atyndağy Qazaq ūlttyq pedinstitutynda oquyn jalğastyrdy. Studenttık jyldary «İgılık» qoğamynyñ jūmysyna belsene aralasty, onyñ negızgı qyzmetı qazaq jastaryn ağartu boldy. «Qazaq» gazetınde basylyp şyqty.\n\n1918 jyly Şonanov öz ūrpağynyñ bılımdı qazaqtarynyñ köpşılıgı retınde «Alaş Orda» partiasyna qosyldy, al 1919 jyly ol partiadağy basqa da joldastary siaqty keñestık pozisiağa öttı. 1921 jyly Yrğyzda tūtqyndalyp, «ūltşyldyqqa qarsy qyzmetı» üşın tergeude boldy, alaida 1922 jyly ony bosatyp, 15 jyldan keiın quğyn-sürgınge ūşyramady. Aldymen Semeide, keiın Orynborda ağartu organdarynda jūmys ıstedı.\n\n1923 jyly Qazaq ölkesın zertteu qoğamynyñ qūramyna kırdı. Keiın osy bırlestıktıñ tarih jäne etnografia seksiasynyñ törağasy bolyp sailandy. 1926 jyly Bakude ötken türkologtardyñ bükılodaqtyq sezıne qatysty. Sezd aiaqtalğannan keiın latyn älıpbiın nasihattau jönındegı respublikalyq komitettıñ qūramyna kırdı. 1923 jyldan 1937 jylğa deiın 32oqulyq, 72 maqala jazdy.\n\n1937 jyly 20 şıldede Şonanov tūtqyndaldy, tergeu ülken zañ būzuşylyqtarmen jürgızıldı, sot zañsyz ükım şyğardy, Şonanov qarsy revolüsiağa qarsy qylmystar jasağany üşın kınälı dep tanylyp, 1938 jyly 27 aqpanda atyldy.\n\nTelzhan Şonanovty oñaltu mäselesı 1960 jyly, bıraq ol tek 1992 jyly 18 qyrküiekte qylmys qūramynyñ joqtyğynan aqtaldy."
    var t33 = ""
    var t34 = ""
    
    
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
                
                ScrollView{
                    VStack(alignment: .leading) {
                        if(languageDB[0].language ?? "Qazaqsha" == "English"){
                            
                            Text("App’s info")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t11)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
                            Text("Telzhan Shonanov’s biography")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t12)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
//                            Text("User's Guide")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t13)
//                                .font(.system(size: 20))
//
//                            Text("Sources used")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t14)
//                                .font(.system(size: 20))
                            
                        }
                        else if(languageDB[0].language ?? "Qazaqsha" == "Қазақша"){
                            Text("Қосымша туралы ақпарат")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t21)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
                            Text("Телжан Шонановтың өмірбаяны")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t22)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
//                            Text("Пайдаланушы нұсқаулығы")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t23)
//                                .font(.system(size: 20))
//
//                            Text("Пайдаланылған көздер")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t24)
//                                .font(.system(size: 20))
                        }
                        else{
                            Text("Qosımsha turalı aqparat")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t31)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
                            Text("Teljan Şonanovtyñ ömırbaiany")
                                .font(.system(size: 25))
                                .bold()
                                .padding(.vertical)
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            Text(t31)
                                .font(.system(size: 20))
                                .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            
//                            Text("Paidalanuşy nūsqaulyğy")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t31)
//                                .font(.system(size: 20))
//
//                            Text("Paidalanylğan közder")
//                                .font(.system(size: 25))
//                                .bold()
//                                .padding(.vertical)
//                            Text(t31)
//                                .font(.system(size: 20))
                        }
                        
                    }
                }.frame(width: 350)
                    .padding()
                
            }.navigationBarBackButtonHidden()
        }
    }
}

struct Page4AboutApp_Previews: PreviewProvider {
    static var previews: some View {
        Page4AboutApp()
    }
}
