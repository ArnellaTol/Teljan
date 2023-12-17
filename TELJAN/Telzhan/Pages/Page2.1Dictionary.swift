//
//  Page2.1Dictionary.swift
//  Telzhan
//
//  Created by Arnella Tolegen on 17.09.2023.
//

import SwiftUI

struct Page2_1Dictionary: View {
    @Environment (\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @Binding var category: Int
    
    @State var title: String
    
    var cognates: [Word] = [
        Word(kzWord: "Алгоритм", qsWord: "Algoritm", enWord: "Algorithm", kzDef: "Математикалық нұсқаулар немесе ережелер жинағы, әсіресе компьютерге берілген жағдайда, тапсырманың жауабын есептеуге көмектеседі", qsDef: "Matematikalyq nūsqaular nemese erejeler jinağy, äsırese kömpüterge berılgen jağdaida, tapsyrmanyñ jauabyn esepteuge kömektesedı", enDef: "A set of mathematical instructions or rules that, especially if given to a computer, will help to calculate an answer to a problem"),
        Word(kzWord: "Бустинг", qsWord: "Busting", enWord: "Boosting", kzDef: "Бір нәрсе жақсаратын немесе көбейетін жағдай", qsDef: "Bır närse jaqsaratyn nemese köbeietın jağdai", enDef: "An occasion when something is improved or increased"),
        Word(kzWord: "Эмиттер", qsWord: "Emiter", enWord: "Emitter", kzDef: "Жарықты, шуды немесе затты, әсіресе көмірқышқыл газын сәулелендіретін (= жіберетін) нәрсе", qsDef: "Jaryqty, şudy nemese zatty, äsırese kömırqyşqyl gazyn säulelendıretın (= jıberetın) närse", enDef: "Something that emits (= sends out) light, a noise, or a substance, especially the gas carbon dioxide"),
        Word(kzWord: "Гистограмма", qsWord: "Gistogramma", enWord: "Histogram", kzDef: "Салмақ, биіктік, уақыт және т.б. ауқымдарды немесе жиіліктерді көрсету үшін әртүрлі биіктіктегі тік бағандарды пайдаланатын математикалық кескін", qsDef: "Salmaq, biıktık, uaqyt jäne t.b. auqymdardy nemese jiılıkterdı körsetu üşın ärtürlı biıktıktegı tık bağandardy paidalanatyn matematikalyq keskın", enDef: "A mathematical picture that uses vertical columns of different heights to show ranges of weight, height, time, etc. or frequencies"),
        Word(kzWord: "Параллель", qsWord: "Paralel", enWord: "Parallel", kzDef: "Басқа бір нәрсеге өте ұқсас немесе екі нәрсенің арасындағы ұқсастық", qsDef: "Basqa bır närsege öte ūqsas nemese ekı närsenıñ arasyndağy ūqsastyq", enDef: "Something very similar to something else, or a similarity between two things"),
        Word(kzWord: "Полигон", qsWord: "Poligon", enWord: "Polygon", kzDef: "Үш немесе одан да көп тік жақтары бар жазық пішін", qsDef: "Üş nemese odan da köp tık jaqtary bar jazyq pışın", enDef: "A flat shape with three or more straight sides"),
        Word(kzWord: "Смартфон", qsWord: "Smartfon", enWord: "Smart Phone", kzDef: "Кішкентай компьютер ретінде пайдаланылатын және Интернетке қосылатын ұялы телефон", qsDef: "Kışkentai kömpüter retınde paidalanylatyn jäne İnternetke qosylatyn ūialy telefon", enDef: "A mobile phone that can be used as a small computer and that connects to the internet"),
        Word(kzWord: "Стресс", qsWord: "Stres", enWord: "Stress", kzDef: "Күрделі жағдайдан туындаған үлкен алаңдаушылық немесе осы күйді тудыратын нәрсе", qsDef: "Kürdelı jağdaidan tuyndağan ülken alañdauşylyq nemese osy küidı tudyratyn närse", enDef: "Great worry caused by a difficult situation, or something that causes this condition"),
        Word(kzWord: "Токен", qsWord: "Token", enWord: "Token", kzDef: "Жеке ақпаратты рұқсат етілмеген адамдарға қарауды болдырмау үшін басқа ақпаратты ұсыну және ауыстыру үшін пайдаланылатын деректер бөлігі.", qsDef: "Jeke aqparatty rūqsat etılmegen adamdarğa qaraudy boldyrmau üşın basqa aqparatty ūsynu jäne auystyru üşın paidalanylatyn derekter bölıgı.", enDef: "A piece of data that is used to represent and replace another one, in order to prevent private information being seen by someone who is not allowed to do so"),
        Word(kzWord: "Регрессия", qsWord: "Regresia", enWord: "Regression", kzDef: "Алдыңғы және төмен ілгерілетілген немесе нашар жағдайға, жағдайға немесе мінез-құлық тәсіліне қайтару", qsDef: "Aldyñğy jäne tömen ılgerıletılgen nemese naşar jağdaiğa, jağdaiğa nemese mınez-qūlyq täsılıne qaitaru", enDef: "A return to a previous and less advanced or worse state, condition, or way of behaving"),
        Word(kzWord: "Талант", qsWord: "Talant", enWord: "Talant", kzDef: "(кімде бар) бір нәрседе, әсіресе оқытусыз жақсы болу қабілеті", qsDef: "(kımde bar) bır närsede, äsırese oqytusyz jaqsy bolu qabıletı", enDef: "(someone who has) a natural ability to be good at something, especially without being taught"),
        Word(kzWord: "Альянс", qsWord: "Äläns", enWord: "Alliance", kzDef: "Одақтастардың немесе мүшелердің ынтымақтастығы", qsDef: "Odaqtastardyñ nemese müşelerdıñ yntymaqtastyğy", enDef: "Co-operation of allies or members"),
        Word(kzWord: "Баннер", qsWord: "Baner", enWord: "Banner", kzDef: "Хабар беретін үлкен мата бәліші", qsDef: "Habar beretın ülken mata bälışı", enDef: "A large pie of cloth bearing a message"),
        Word(kzWord: "Колаборация", qsWord: "Kolaborasia", enWord: "Collaboration", kzDef: "Басқалармен бірлесіп жұмыс істеу жөніндегі іс-әрекеттер", qsDef: "Basqalarmen bırlesıp jūmys ısteu jönındegı ıs-äreketter", enDef: "The action of working together with others"),
        Word(kzWord: "Дефект", qsWord: "Defekt", enWord: "Defect", kzDef: "Машинаны пайдалануға кедергі келтіретін тиісті функцияның болмауы", qsDef: "Maşinany paidalanuğa kedergı keltıretın tiıstı funksianyñ bolmauy", enDef: "A lack of proper function which prevents use of a machine"),
        Word(kzWord: "Элита", qsWord: "Elita", enWord: "Elite", kzDef: "Шектеулі топқа жатады", qsDef: "Şekteulı topqa jatady", enDef: "Relating to a limited group"),
        Word(kzWord: "Лайбл", qsWord: "Laibl", enWord: "Label ", kzDef: "Оның құрамын сәйкестендіруге арналған затқа орналастырылған қағаз немесе пластик парағы", qsDef: "Onyñ qūramyn säikestendıruge arnalğan zatqa ornalastyrylğan qağaz nemese plastik parağy", enDef: "A piece of paper or plastic placed on an item for purposes of identifying its contents"),
        Word(kzWord: "Тренд", qsWord: "Trend", enWord: "Trend", kzDef: "Ортақ пайдаланылатын ағымдағы теңшелім", qsDef: "Ortaq paidalanylatyn ağymdağy teñşelım", enDef: "The current preference displayed by the public"),
        Word(kzWord: "Ультиматум", qsWord: "Ültimatum", enWord: "Ultimatum", kzDef: "Екі күрделі немесе жағымсыз нұсқаны ұсыну әрекеті", qsDef: "Ekı kürdelı nemese jağymsyz nūsqany ūsynu äreketı", enDef: "Ultimatum"),
        Word(kzWord: "Апостроф", qsWord: "Apostrof", enWord: "Apostrophe", kzDef: "Бір немесе бірнеше әріп немесе цифр алынып тасталғанын көрсететін («) белгі", qsDef: "Bır nemese bırneşe ärıp nemese sifr alynyp tastalğanyn körsetetın («) belgı", enDef: "The mark ( ’ ) used to show that one or more letters or numbers have been left out"),
        Word(kzWord: "Аналог", qsWord: "Analog", enWord: "Analog", kzDef: "деректерді өлшеу немесе сақтау үшін физикалық шамалардың тұрақты өзгеретін диапазонын (электрондық процесті)", qsDef: "derekterdı ölşeu nemese saqtau üşın fizikalyq şamalardyñ tūraqty özgeretın diapazonyn (elektrondyq prosestı)", enDef: "(of an electronic process) using a continuously changing range of physical quantities to measure or store data"),
        Word(kzWord: "Каскад", qsWord: "Kaskad", enWord: "Cascad", kzDef: "бір мезгілде құлайтын немесе тез келетін заттардың көптігі", qsDef: "bır mezgılde qūlaityn nemese tez keletın zattardyñ köptıgı", enDef: "a large number of things falling or coming quickly at the same time"),
        Word(kzWord: "Контур", qsWord: "Kontur", enWord: "Contour", kzDef: "бір нәрсенің сыртқы шеттері; оның пішінінің немесе пішінінің контуры", qsDef: "bır närsenıñ syrtqy şetterı; onyñ pışınınıñ nemese pışınınıñ kontury", enDef: "the outer edges of something; the outline of its shape or form"),
        Word(kzWord: "Робот", qsWord: "Robot", enWord: "Robot", kzDef: "күрделі міндеттер сериясын өзі орындай алатын машина", qsDef: "kürdelı mındetter seriasyn özı oryndai alatyn maşina", enDef: "a machine that can perform a complicated series of tasks by itself"),
        Word(kzWord: "Лазер", qsWord: "Lazer", enWord: "Laser", kzDef: "медициналық операцияларды орындау үшін немесе ойын-сауық үшін жарық үлгілерін жасау үшін металл кесуге арналған құрал ретінде пайдалануға болатын қуатты тар жарық сәулесі (өндіретін құрылғы)", qsDef: "medisinalyq operasialardy oryndau üşın nemese oiyn-sauyq üşın jaryq ülgılerın jasau üşın metal kesuge arnalğan qūral retınde paidalanuğa bolatyn quatty tar jaryq säulesı (öndıretın qūrylğy)", enDef: "(a device that produces) a powerful, narrow beam of light that can be used as a tool to cut metal, to perform medical operations, or to create patterns of light for entertainment"),
        Word(kzWord: "Медиана", qsWord: "Mediana", enWord: "Median", kzDef: "Медиандық мән өлшем ретімен орналасқан мәндер жиынындағы орташа мән болып табылады", qsDef: "Mediandyq män ölşem retımen ornalasqan mänder jiynyndağy ortaşa män bolyp tabylady", enDef: "The median value is the middle one in a set of values arranged in order of size"),
        Word(kzWord: "Мотор", qsWord: "Motor", enWord: "Motor", kzDef: "электр немесе отынды қозғалысқа ауыстыратын және машинаны жұмыс істеуге мәжбүрлейтін құрылғы", qsDef: "elektr nemese otyndy qozğalysqa auystyratyn jäne maşinany jūmys ısteuge mäjbürleitın qūrylğy", enDef: "a device that changes electricity or fuel into movement and makes a machine work"),
        Word(kzWord: "Нейрон", qsWord: "Neiron", enWord: "Neuron", kzDef: "ми мен дененің басқа бөліктері арасында ақпарат алып жүретін жүйке жасушасы", qsDef: "mi men denenıñ basqa bölıkterı arasynda aqparat alyp jüretın jüike jasuşasy", enDef: "a nerve cell that carries information between the brain and other parts of the body"),
        Word(kzWord: "Пластик", qsWord: "Plastik", enWord: "Plastic", kzDef: "әр түрлі нысандарда жұмсақ болғанда қалыптасуы мүмкін және әр түрлі қолданысы көп жасанды зат", qsDef: "är türlı nysandarda jūmsaq bolğanda qalyptasuy mümkın jäne är türlı qoldanysy köp jasandy zat", enDef: "an artificial substance that can be shaped when soft into many different forms and has many different uses"),
        Word(kzWord: "Логика", qsWord: "Logika", enWord: "Logic", kzDef: "ерекше ойлау бейнесі, әсіресе ақылға қонымды және ақыл-ойға негізделген", qsDef: "erekşe oilau beinesı, äsırese aqylğa qonymdy jäne aqyl-oiğa negızdelgen", enDef: "a particular way of thinking, especially one that is reasonable and based on good judgment"),
        Word(kzWord: "Сервер", qsWord: "Server", enWord: "Server", kzDef: "басқа компьютерлер ақпарат алатын орталық компьютер", qsDef: "basqa kömpüterler aqparat alatyn ortalyq kömpüter", enDef: "a central computer from which other computers get information"),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
    ]
    
    var untranslatableKZ: [Word] = [
        Word(kzWord: "Бауырым", qsWord: "Bauyrym", enWord: "", kzDef: "Туыс адам", qsDef: "Tuys adam", enDef: "Close person"),
        Word(kzWord: "Төр", qsWord: "Tör", enWord: "", kzDef: "Қонаққа арналган кұрметті орын", qsDef: "Qonaqqa arnalgan kūrmettı oryn", enDef: "Place of honor for the guest"),
        Word(kzWord: "Айналайын", qsWord: "Ainalaiyn", enWord: "", kzDef: "Сүйкімді адам", qsDef: "Süikımdı adam", enDef: "Darling or dear"),
        Word(kzWord: "Әуез", qsWord: "Äuez", enWord: "", kzDef: "Жақсы ән немесе дыбыс", qsDef: "Jaqsy än nemese dybys", enDef: "Pleasant sound"),
        Word(kzWord: "Бәсе", qsWord: "Bäse", enWord: "", kzDef: "Таң қалу", qsDef: "Tañ qalu", enDef: "Astonishment"),
        Word(kzWord: "Еркелегіш", qsWord: "Erkelegış", enWord: "", kzDef: "Сүйіспеншілікті сүйетін", qsDef: "Süyispenşilikti süyetin", enDef: "Lover of affection"),
        Word(kzWord: "Қырағат", qsWord: "Qyrağat", enWord: "", kzDef: "Құран оқу, әуезді, әсем ән айту", qsDef: "Qūran oqu, äuezdı, äsem än aitu", enDef: "Reading the Koran, melodic and beautiful chanting"),
        Word(kzWord: "Таңсәрі ", qsWord: "Tañsärı", enWord: "", kzDef: "Жерге күн сәулесі түсіп, бірақ күн әлі көтерілмеген кезде", qsDef: "Jerge kün säulesı tüsıp, bıraq kün älı köterılmegen kezde", enDef: "When sunlight falls on the earth but the sun has not yet risen"),
        Word(kzWord: "Өгейсіну", qsWord: "Ögeisınu", enWord: "", kzDef: "Біреуге бейтаныс адамдай қарасаң", qsDef: "Bıreuge beitanys adamdai qarasañ", enDef: "When you treat someone like a stranger"),
        Word(kzWord: "Құлансәрі ", qsWord: "Qūlansärı", enWord: "", kzDef: "Ерте ымырт", qsDef: "Erte ymyrt", enDef: "Early twilight"),
        Word(kzWord: "Алақай", qsWord: "Alaqai", enWord: "", kzDef: "Жеңіс айқайы", qsDef: "Jeñıs aiqaiy", enDef: "Victory shout"),
        Word(kzWord: "Қап", qsWord: "Qap", enWord: "", kzDef: "Өкініш айқайы", qsDef: "Ökınış aiqaiy", enDef: "A cry of regret"),
        Word(kzWord: "Бәрекелді", qsWord: "Bärekeldı", enWord: "", kzDef: "Таңдану айқайы", qsDef: "Tañdanu aiqaiy", enDef: "Shout of admiration"),
        Word(kzWord: "Әттеген-ай", qsWord: "Ättegen-ai", enWord: "", kzDef: "Өкінішті", qsDef: "Ökınıştı", enDef: "It's a pity"),
        Word(kzWord: "Шіркін", qsWord: "Şırkın", enWord: "", kzDef: "Көңілсіздік пен өкініш", qsDef: "Köñılsızdık pen ökınış", enDef: "Regret and disappointment"),
        Word(kzWord: "Паһ-паһ", qsWord: "Pah-pah", enWord: "", kzDef: "Ләззат", qsDef: "Läzzat", enDef: "Delight"),
        Word(kzWord: "Мәссаған", qsWord: "Mässağan", enWord: "", kzDef: "Таңданудың қатты айқайы", qsDef: "Tañdanudyñ qatty aiqaiy", enDef: "Strong exclamation of surprise, shock"),
        Word(kzWord: "Ойбай", qsWord: "Oibai", enWord: "", kzDef: "Таңқаларлық және сонымен бірге тәжірибе", qsDef: "Tañqalarlyq jäne sonymen bırge täjıribe", enDef: "Surprise and at the same time empathy"),
        Word(kzWord: "Пай-пай! Түу!", qsWord: "Pai-pai! Tüu!", enWord: "", kzDef: "Таңдану және өкіну", qsDef: "Tañdanu jäne ökınu", enDef: "Admiration and regret"),
        Word(kzWord: "Түге! Пішту! Бай-бай-бай!", qsWord: "Tüge! Pıştu! Bai-bai-bai!", enWord: "", kzDef: "Көңіл қалдыру", qsDef: "Köñıl qaldyru", enDef: "Disappointment"),
        Word(kzWord: "Япырмау", qsWord: "İapyrmau", enWord: "", kzDef: "Арман, өкініш", qsDef: "Arman, ökınış", enDef: "Dream, regret"),
        Word(kzWord: "Уһ", qsWord: "Uh", enWord: "", kzDef: "Шаршау", qsDef: "Şarşau", enDef: "Fatigue"),
        Word(kzWord: "Мә", qsWord: "Mä", enWord: "", kzDef: "Қимыл «Ал!» және таң қалдыру", qsDef: "Qimyl «Al!» jäne tañ qaldyru", enDef: "Gesture «Take» and surprise"),
        Word(kzWord: "Тәйт! Жә! Әйда! Тек!", qsWord: "Täit! Jä! Äida! Tek!", enWord: "", kzDef: "Бір нәрсеге тыйым салу, біреуге бұйрық беру", qsDef: "Bır närsege tyiym salu, bıreuge būiryq beru", enDef: "To prohibit something, to order someone"),
        Word(kzWord: "Пәлі, Бәлі", qsWord: "Pälı, Bälı", enWord: "", kzDef: "Алғыс айту, ұнатпау немесе таңдану", qsDef: "Alğys aitu, ūnatpau nemese tañdanu", enDef: "Gratitude, dislike or surprise"),
        Word(kzWord: "Мамихлапинатапай", qsWord: "Mamihlapinatapai", enWord: "", kzDef: "Екеуі де бірінші болғысы келмейтін, бірақ екеуінің де бір нәрсені бастауға деген ынтасын білдіретін екі адамның арасындағы көзқарас", qsDef: "Ekeuı de bırınşı bolğysy kelmeitın, bıraq ekeuınıñ de bır närsenı bastauğa degen yntasyn bıldıretın ekı adamnyñ arasyndağy közqaras", enDef: "A look between two people that expresses the desire of each for the other to initiate something that both want, but neither wants to be the first"),
        Word(kzWord: "Немере", qsWord: "Nemere", enWord: "", kzDef: "Ұлынан немерелері", qsDef: "Ūlynan nemerelerı", enDef: "Grandchildren from son"),
        Word(kzWord: "Жиен", qsWord: "Jien", enWord: "", kzDef: "Қызынан немерелері", qsDef: "Qyzynan nemerelerı", enDef: "Grandchildren from daughter"),
        Word(kzWord: "Жиенсу", qsWord: "Jiensu", enWord: "", kzDef: "Жиендер ата-анасына барған кезде артықшылықтарға ие болатын жағдайларды білдіреді", qsDef: "Jiender ata-anasyna barğan kezde artyqşylyqtarğa ie bolatyn jağdailardy bıldıredı", enDef: "Denotes situations in which grandchildren enjoy their privileges visiting the mother's parents"),
        Word(kzWord: "Әкімсу", qsWord: "Äkımsu", enWord: "", kzDef: "Әкім болмай, әлде басқа бастықпын деп кейіптеу", qsDef: "Äkım bolmai, älde basqa bastyqpyn dep keiıpteu", enDef: "Pretending to be an akim or any other boss without being one"),
        Word(kzWord: "Әңгі", qsWord: "Äñgı", enWord: "", kzDef: "Өзінің ақымақтығын қатты көрсетуді ұнататын ақымақ адам, мысалы, үнемі қажетсіз дауысты көтеру арқылы", qsDef: "Özınıñ aqymaqtyğyn qatty körsetudı ūnatatyn aqymaq adam, mysaly, ünemı qajetsız dauysty köteru arqyly", enDef: "A stupid person who also likes to loudly demonstrate his stupidity, for example, by constantly raising his voice unnecessarily"),
        Word(kzWord: "Әуез", qsWord: "Äuez", enWord: "", kzDef: "Кез келген жағымды дыбыс, соның ішінде музыка немесе дауыс", qsDef: "Kez kelgen jağymdy dybys, sonyñ ışınde muzyka nemese dauys", enDef: "Any pleasant sound, including music or voice"),
        Word(kzWord: "Жалғызсырау", qsWord: "Jalğyzsyrau", enWord: "", kzDef: "Жалғыздық пен скучно, мұңды, мұңды сезіну", qsDef: "Jalğyzdyq pen skuchno, mūñdy, mūñdy sezınu", enDef: "Feeling lonely and bored, sad, sad about it"),
        Word(kzWord: "Қадірсіздендіру", qsWord: "Qadırsızdendıru", enWord: "", kzDef: "Биліктің, құрметтің, жоғары мәртебенің, құндылығыңның жоғалуы", qsDef: "Bilıktıñ, qūrmettıñ, joğary märtebenıñ, qūndylyğyñnyñ joğaluy", enDef: "Losing authority, respect, high status, your value"),
        Word(kzWord: "Қаңбақтай", qsWord: "Qañbaqtai", enWord: "", kzDef: "Жоғары жылдамдықпен жүргізу", qsDef: "Joğary jyldamdyqpen jürgızu", enDef: "High speed driving"),
        Word(kzWord: "Қолаң", qsWord: "Qolañ", enWord: "", kzDef: "Идеал әйелдер шашы: қалың, ұзын, жылтыр", qsDef: "İdeal äielder şaşy: qalyñ, ūzyn, jyltyr", enDef: "Ideal women's hair: thick, long, shiny"),
        Word(kzWord: "Қызылсырау", qsWord: "Qyzylsyrau", enWord: "", kzDef: "Ет жеуге деген құштарлық", qsDef: "Et jeuge degen qūştarlyq", enDef: "Desire to eat meat"),
        Word(kzWord: "Монтию / томпию", qsWord: "Montiu / tompiu", enWord: "", kzDef: "Сабырлы, мойынсұнғыш және мазмұнды болып көрінеді, көбінесе балаларға қатысты қолданылады", qsDef: "Sabyrly, moiynsūnğyş jäne mazmūndy bolyp körınedı, köbınese balalarğa qatysty qoldanylady", enDef: "Appear calm, obedient and content, most often used in relation to children"),
        Word(kzWord: "Өгейсіну", qsWord: "Ögeisınu", enWord: "", kzDef: "Бейтаныс адам сияқты қарым-қатынас жасаңыз", qsDef: "Beitanys adam siaqty qarym-qatynas jasañyz", enDef: "Treat like a strange"),
        Word(kzWord: "Сәске", qsWord: "Säske", enWord: "", kzDef: "Күн көкжиектен ақыры көтерілген кез", qsDef: "Kün kökjiekten aqyry köterılgen kez", enDef: "The time when the sun finally rose above the horizon"),
        Word(kzWord: "Сәске", qsWord: "Säske", enWord: "", kzDef: "Күн көкжиектен ақыры көтерілген кез", qsDef: "Kün kökjiekten aqyry köterılgen kez", enDef: "The time when the sun finally rose above the horizon"),
        Word(kzWord: "Көташар", qsWord: "Kötaşar", enWord: "", kzDef: "Балалар қонақтарға барлық үй сырларын айтып отырған сәт", qsDef: "Balalar qonaqtarğa barlyq üi syrlaryn aityp otyrğan sät", enDef: "The moment children tell to guests all household secrets"),
        Word(kzWord: "Өздесу", qsWord: "Özdesu", enWord: "", kzDef: "Өзіңмен кездесу, мысалы, киноға немесе мейрамханаға жалғыз бару", qsDef: "Özıñmen kezdesu, mysaly, kinoğa nemese meiramhanağa jalğyz baru", enDef: "Meeting yourself, for example, going alone to the cinema or to a restaurant"),
        Word(kzWord: "Шәйлендірілмеген ", qsWord: "Şäilendırılmegen", enWord: "", kzDef: "Таңертеңнен шай ішіп үлгермеген адам енді ұйқылы жүреді", qsDef: "Tañerteñnen şai ışıp ülgermegen adam endı ūiqyly jüredı", enDef: "A man who did not have time to drink tea in the morning, and now walks sleepy"),
        Word(kzWord: "Досхаббат", qsWord: "Doshabbat", enWord: "", kzDef: "Ерлердің берік достығы", qsDef: "Erlerdıñ berık dostyğy", enDef: "Strong male friendship"),
        Word(kzWord: "Уикимақ ", qsWord: "Uikimaq ", enWord: "", kzDef: "Уикипедияда жазылғандардың барлығын шындыққа қабылдайтын адам", qsDef: "Uikipediada jazylğandardyñ barlyğyn şyndyqqa qabyldaityn adam", enDef: "The Man Who Takes Everything Wikipedia Says for the Truth"),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
    ]
    
    var untranslatableEN: [Word] = [
        Word(kzWord: "", qsWord: "", enWord: "Facepalm", kzDef: "Диалогтын мәнін көрмегенде немесе  диалог  ақымақ деп ойласаңыз, содан кейін бетіңізді қолыңызбен жапқыңыз келеді", qsDef: "Dialogtyn mänın körmegende nemese  dialog aqymaq dep oilasañyz, sodan keiın betıñızdı qolyñyzben japqyñyz keledı", enDef: "(in emails, on social media, etc.) used to show you find something embarrassing, annoying, etc. in a way that makes you want to do a facepalm"),
        Word(kzWord: "", qsWord: "", enWord: "Serendipity", kzDef: "Күтпеген, бірақ өте жағымды сәйкестік", qsDef: "Kütpegen, bıraq öte jağymdy säikestık", enDef: "The fact of something interesting or pleasant happening by chance"),
        Word(kzWord: "", qsWord: "", enWord: "Bromance", kzDef: "Екі жақын достың қарым-қатынасы", qsDef: "Ekı jaqyn dostyñ qarym-qatynasy", enDef: "A very close friendship between two men"),
        Word(kzWord: "", qsWord: "", enWord: "Earworm", kzDef: "Мазасыз ән немесе күй", qsDef: "Mazasyz än nemese küi", enDef: "a song or tune that stays in your head for a long time after you have heard it"),
        Word(kzWord: "", qsWord: "", enWord: "Jet lag", kzDef: "Басқа уақыт белдеуіне рейстен кейін био сағатыңыз әлі қайта қсылмаган және осыған байланысты ұйқы режимі бұзылған кезде", qsDef: "Basqa uaqyt beldeuıne reisten keiın bio sağatyñyz älı qaita qsylmagan jäne osyğan bailanysty ūiqy rejimı būzylğan kezde", enDef: "The feeling of being tired and slightly confused after a long plane journey, especially when there is a big difference in the time at the place you leave and that at the place you arrive in"),
        Word(kzWord: "", qsWord: "", enWord: "Omnishambles", kzDef: "Түсінбеушілік немесе толық шатасу", qsDef: "Tüsınbeuşılık nemese tolyq şatasu", enDef: "A situation, especially in politics, which has been very badly managed, with many mistakes and a great lack of understanding"),
        Word(kzWord: "", qsWord: "", enWord: "Handyman", kzDef: "Қолынан бәрі келетін адам", qsDef: "Qolynan bärı keletın adam", enDef: "A man who is good at doing practical jobs inside and outside the house, either as a hobby or as a job"),
        Word(kzWord: "", qsWord: "", enWord: "In-laws", kzDef: "Күйеуінің немесе әйелінің туыстары", qsDef: "Küieuınıñ nemese äielınıñ tuystary", enDef: "Your relatives by marriage, especially the parents of your husband or wife"),
        Word(kzWord: "", qsWord: "", enWord: "Sibling", kzDef: "Туысқандарға, бұл жағдайда бауырларға арналған сөз", qsDef: "Tuysqandarğa, būl jağdaida bauyrlarğa arnalğan söz", enDef: "A brother or sister"),
        Word(kzWord: "", qsWord: "", enWord: "Cringe", kzDef: "Ұят пен ұяттан өту", qsDef: "Ūiat pen ūiattan ötu", enDef: "Making you feel embarrassed or uncomfortable"),
        Word(kzWord: "", qsWord: "", enWord: "Errands", kzDef: "Үйден тыс жерде жасау керек болатын көптеген ұсақ-түйектер", qsDef: "Üiden tys jerde jasau kerek bolatyn köptegen ūsaq-tüiekter", enDef: "A job that you do for somebody that involves going somewhere"),
        Word(kzWord: "", qsWord: "", enWord: "Fortnight", kzDef: "Екі апта", qsDef: "Ekı apta", enDef: "Two weeks"),
        Word(kzWord: "", qsWord: "", enWord: "Awkward", kzDef: "Сізді ұятқа қалдыру", qsDef: "Sızdı ūiatqa qaldyru", enDef: "Making you feel embarrassed"),
        Word(kzWord: "", qsWord: "", enWord: "Whatchamacallit", kzDef: "Бір нәрсенің атын ойлай алмаған кезде", qsDef: "Bır närsenıñ atyn oilai almağan kezde", enDef: "Used when you cannot think of the name of something"),
        Word(kzWord: "", qsWord: "", enWord: "Gismo", kzDef: "Шағын жабдықты білдіретін жалпы сөз", qsDef: "Şağyn jabdyqty bıldıretın jalpy söz", enDef: "a general word for a small piece of equipment, often one that does something in a new and clever way"),
        Word(kzWord: "", qsWord: "", enWord: "Rain check", kzDef: "Ұсынысты немесе шақырудан бас тарту, бірақ оны кейін қабылдай алатыныңызды айту", qsDef: "Ūsynysty nemese şaqyrudan bas tartu, bıraq ony keiın qabyldai alatynyñyzdy aitu", enDef: "To refuse an offer or invitation but say that you might accept it later"),
        Word(kzWord: "", qsWord: "", enWord: "Bully", kzDef: "Күшін немесе күшін әлсіз адамдарды қорқыту немесе ренжіту үшін пайдаланатын адам", qsDef: "Küşın nemese küşın älsız adamdardy qorqytu nemese renjıtu üşın paidalanatyn adam", enDef: "a person who uses their strength or power to frighten or hurt weaker people"),
        Word(kzWord: "", qsWord: "", enWord: "Background", kzDef: "Белгілі бір уақытта немесе белгілі бір оқиғаның негізінде жатқан жағдайлар немесе жағдай; адамның білімі, тәжірибесі және әлеуметтік жағдайлары", qsDef: "Belgılı bır uaqytta nemese belgılı bır oqiğanyñ negızınde jatqan jağdailar nemese jağdai; adamnyñ bılımı, täjıribesı jäne äleumettık jağdailary", enDef: "The circumstances or situation prevailing at a particular time or underlying a particular event; a person’s education, experience, and social circumstances"),
        Word(kzWord: "", qsWord: "", enWord: "Privacy", kzDef: "Біреуін басқа адамдар байқамайтын немесе таратпайтын күй; қоғамның назарынан тыс қалу жағдайы", qsDef: "Bıreuın basqa adamdar baiqamaityn nemese taratpaityn küi; qoğamnyñ nazarynan tys qalu jağdaiy", enDef: "A state in which one is not observed or distributed by other people; the state of being free from public attention"),
        Word(kzWord: "", qsWord: "", enWord: "Abusive", kzDef: "Өте қорлау немесе қорлау; үйреншікті зорлық-зомбылық пен қатыгездікпен айналысу немесе онымен сипатталатын; әділетсіздікке немесе заңсыздыққа қатысты", qsDef: "Öte qorlau nemese qorlau; üirenşıktı zorlyq-zombylyq pen qatygezdıkpen ainalysu nemese onymen sipattalatyn; ädıletsızdıkke nemese zañsyzdyqqa qatysty", enDef: "Extremely offensive or insulting; engaging in or characterized by habitual violence and cruelty; involving injustice or illegality"),
        Word(kzWord: "", qsWord: "", enWord: "Football widow", kzDef: "Күйеуі футбол ойнап немесе көргенде жиі жалғыз қалдыратын әйел", qsDef: "Küieuı futbol oinap nemese körgende jiı jalğyz qaldyratyn äiel", enDef: "A woman whose husband often leaves her alone while he plays or watches football"),
        Word(kzWord: "", qsWord: "", enWord: "Refrigerator rights", kzDef: "Қарым-қатынастағы өте жайлылық пен таныстық деңгейін сипаттайтын термин", qsDef: "Qarym-qatynastağy öte jailylyq pen tanystyq deñgeiın sipattaityn termin", enDef: "A term describing a level of extreme comfort and familiarity in a relationship"),
        Word(kzWord: "", qsWord: "", enWord: "Toddler", kzDef: "Жақында ғана жүруді үйренген бала, 1-3 жас", qsDef: "Jaqynda ğana jürudı üirengen bala, 1-3 jas", enDef: "A child who has only recently learnt to walk, 1-3 years"),
        Word(kzWord: "", qsWord: "", enWord: "Commute", kzDef: "Жұмыс орныңыз бен үйіңіздің арасында үнемі автобуспен, пойызбен, автокөлікпен және т.б", qsDef: "Jūmys ornyñyz ben üiıñızdıñ arasynda ünemı avtobuspen, poiyzben, avtokölıkpen jäne t.b", enDef: "To travel regularly by bus, train, car, etc. between your place of work and your home"),
        Word(kzWord: "", qsWord: "", enWord: "Staycation", kzDef: "Үйіңізде немесе оның жанында өткізетін демалыс", qsDef: "Üiıñızde nemese onyñ janynda ötkızetın demalys", enDef: "A holiday that you spend at or near your home"),
        Word(kzWord: "", qsWord: "", enWord: "Insigth", kzDef: "Түсіністік, ұғынушылық, сезім", qsDef: "Tüsınıstık, ūğynuşylyq, sezım", enDef: "An understanding of what something is like"),
        Word(kzWord: "", qsWord: "", enWord: "Gobbledygook", kzDef: "Сөйлеу қабілеті; ұзақ және түсініксіз сөздерді қолдану/Бюрократиялық немесе арнайы тіл", qsDef: "Söileu qabıletı; ūzaq jäne tüsınıksız sözderdı qoldanu/Bürokratialyq nemese arnaiy tıl", enDef: "Complicated language that is difficult to understand, especially when used in official documents"),
        Word(kzWord: "", qsWord: "", enWord: "Jinx", kzDef: "Сәтсіздікке әкелетін адам немесе зат", qsDef: "Sätsızdıkke äkeletın adam nemese zat", enDef: "To bring bad luck in a mysterious way"),
        Word(kzWord: "", qsWord: "", enWord: "Shallow", kzDef: "Жоғарғы бөліктің немесе үстіңгі бөліктің және төменгі бөліктің арасында үлкен қашықтықтың болмауы", qsDef: "Joğarğy bölıktıñ nemese üstıñgı bölıktıñ jäne tömengı bölıktıñ arasynda ülken qaşyqtyqtyñ bolmauy", enDef: "Not having much distance between the top or surface and the bottom"),
        Word(kzWord: "", qsWord: "", enWord: "Bamboozle", kzDef: "Біреуді шатастыру, әсіресе алдау арқылы", qsDef: "Bıreudı şatastyru, äsırese aldau arqyly", enDef: "To confuse somebody, especially by tricking them"),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
        
    ]
    
    var idioms: [Word] = [
        Word(kzWord: "Қөзіне көк шыбын үймелету", qsWord: "Qözıne kök şybyn üimeletu", enWord: "Cut (someone) down to size", kzDef: "Біреудің дәрменсіздігін дәлелдеу", qsDef: "Bıreudıñ därmensızdıgın däleldeu", enDef: "To show somebody that they are not as important as they think they are"),
        Word(kzWord: "Aғаш атқа мінгізу", qsWord: "Ağaş atqa mıngızu", enWord: "Have a big mouth/Set tongues wagging", kzDef: "Жаман өсек, жала тарату", qsDef: "Jaman ösek, jala taratu", enDef: "To be bad at keeping secrets"),
        Word(kzWord: "Әкесін көзіне көрсету", qsWord: "Äkesın közıne körsetu", enWord: "Worked over", kzDef: "Қорқыту", qsDef: "Qorqytu", enDef: "To attack someone and hit them"),
        Word(kzWord: "Ақ жүрек", qsWord: "Aq jürek", enWord: "Heart to heart", kzDef: "Шынайы, шын жүректен", qsDef: "Şynaiy, şyn jürekten", enDef: "Honestly about  feelings"),
        Word(kzWord: "Екі қолы алдына сыймау", qsWord: "Ekı qoly aldyna syimau", enWord: "Fool around", kzDef: "Ештене істемеу", qsDef: "Eştene ıstemeu", enDef: "To waste time instead of doing something that you should be doing"),
        Word(kzWord: "Қара бет", qsWord: "Qara bet", enWord: "Bad apple", kzDef: "Намыссыз", qsDef: "Namyssyz", enDef: "One bad person who has a bad effect on others"),
        Word(kzWord: "Егіз қозыдай", qsWord: "Egız qozydai", enWord: "Сast in the same mold", kzDef: "Бір-біріне өте ұқсас", qsDef: "Bır-bırıne öte ūqsas", enDef: "Be very similar"),
        Word(kzWord: "Жүрегі ұшу", qsWord: "Jüregı ūşu", enWord: "Get cold feet", kzDef: "Қатты қорқу, қорқақ болу", qsDef: "Qatty qorqu, qorqaq bolu", enDef: "To suddenly become nervous about doing something, to chicken out"),
        Word(kzWord: "Екі жүзді", qsWord: "Ekı jüzdı", enWord: "Two-faced", kzDef: "Шынайы емес", qsDef: "Şynaiy emes", enDef: "Not sincere"),
        Word(kzWord: "Аузымен құс тістген", qsWord: "Auzymen qūs tıstgen", enWord: "Wise guy", kzDef: "Ақылды талантты епті", qsDef: "Aqyldy talantty eptı", enDef: "Smart guy"),
        Word(kzWord: "Екі оттың ортасында", qsWord: "Ekı ottyñ ortasynda", enWord: "Вetween the devil and the deep blue sea", kzDef: "Өзіңізді екі жақтан қауіп немесе қиындық тудыратын жағдайда табыңыз", qsDef: "Özıñızdı ekı jaqtan qauıp nemese qiyndyq tudyratyn jağdaida tabyñyz", enDef: "In a difficult situation where there are two equally unpleasant or unacceptable choices"),
        Word(kzWord: "Екі үйге бір қазан астыру", qsWord: "Ekı üige bır qazan astyru", enWord: "Force someone's hand", kzDef: "Бағын, өз еркіңді айт", qsDef: "Bağyn, öz erkıñdı ait", enDef: "Make somebody do something"),
        Word(kzWord: "Екі шоқып, бір қарау", qsWord: "Ekı şoqyp, bır qarau", enWord: "Тake heed", kzDef: "Өте сақ болыңыз", qsDef: "Öte saq bolyñyz", enDef: "Be careful"),
        Word(kzWord: "Ешкінің құйрығы көкке жеткенде, түйенің құйрығы жерге жеткенде", qsWord: "Eşkınıñ qūiryğy kökke jetkende, tüienıñ qūiryğy jerge jetkende", enWord: "That will be the day", kzDef: "Ешқашан келмейтін шексіз алыс уақытқа дейін.", qsDef: "Eşqaşan kelmeitın şeksız alys uaqytqa deiın", enDef: "Something that will probably never happen"),
        Word(kzWord: "Қанаттыға қақтырмау, тұмсықтыға шоқытпау", qsWord: "Qanattyğa qaqtyrmau, tūmsyqtyğa şoqytpau", enWord: "Guard against (someone or something)", kzDef: "Ешкімді ренжітпеу; әсерлі алаңдаушылық таныту.", qsDef: "Eşkımdı renjıtpeu; äserlı alañdauşylyq tanytu", enDef: "To take care to prevent something"),
        Word(kzWord: "Қимасы қышу", qsWord: "Qimasy qyşu", enWord: "None of (someone's) business/beeswax", kzDef: "Өз ісіңмен айналыс", qsDef: "Öz ısıñmen ainalys", enDef: "None of your business, mind your own business"),
        Word(kzWord: "Өмірі бар", qsWord: "Ömırı bar", enWord: "Never in one's life", kzDef: "Ешқашан", qsDef: "Eşqaşan", enDef: "Never"),
        Word(kzWord: "Жіпсіз байлану", qsWord: "Jıpsız bailanu", enWord: "Lose out on (something)", kzDef: "Кез келген нәрсені істеу қабілетін жоғалтыңыз", qsDef: "Kez kelgen närsenı ısteu qabıletın joğaltyñyz", enDef: "To not get something you wanted or feel you should have"),
        Word(kzWord: "Маңдай терін төгу", qsWord: "Mañdai terın tögu", enWord: "By the sweat of one's brow", kzDef: "Бар күшіңізбен жұмыс жасаңыз", qsDef: "Bar küşıñızben jūmys jasañyz", enDef: "To work hard"),
        Word(kzWord: "Пәрмене (пәруана) болу", qsWord: "Pärmene (päruana) bolu", enWord: "Lay down one's life (for someone or something)", kzDef: "Өзге үшін өзіңді аяма", qsDef: "Özge üşın özıñdı aiama", enDef: "Give your life for someone/something"),
        Word(kzWord: "Ақ май аузынан ағу", qsWord: "Aq mai auzynan ağu", enWord: "Well-heeled", kzDef: "Мол болу, молшылықта өмір сүру", qsDef: "Mol bolu, molşylyqta ömır süru", enDef: "Rich"),
        Word(kzWord: "Ат сауырын беру", qsWord: "At sauyryn beru", enWord: "Give (someone) a hand", kzDef: "Қиын уақытта көмектесу", qsDef: "Qiyn uaqytta kömektesu", enDef: "To give someone help"),
        Word(kzWord: "Аузы аузына жұқпау", qsWord: "Auzy auzyna jūqpau", enWord: "Talk (someone's) head off", kzDef: "Тоқтамай тез сөйлеңіз", qsDef: "Toqtamai tez söileñız", enDef: "To talk to someone for a long time, usually loudly"),
        Word(kzWord: "Ешкінің құйрығы көкке жеткенде, түйенің құйрығы жерге жеткенде", qsWord: "Eşkınıñ qūiryğy kökke jetkende, tüienıñ qūiryğy jerge jetkende", enWord: "Once in a blue moon", kzDef: "Шексіз алыс уақытқа дейін", qsDef: "Şeksız alys uaqytqa deiın", enDef: "Something that happens very rarely"),
        Word(kzWord: "Қараңды батыр!", qsWord: "Qarañdy batyr!", enWord: "Hit the road", kzDef: "Кет бұл жерден", qsDef: "Ket būl jerden", enDef: "Go away "),
        Word(kzWord: "Мақтан тұту", qsWord: "Maqtan tūtu", enWord: "Burst with pride", kzDef: "Мақтаныш сезімін сезініңіз", qsDef: "Maqtanyş sezımın sezınıñız", enDef: "To feel a strong emotion (pride)"),
        Word(kzWord: "Шопақ құрлы көрмеу", qsWord: "Şopaq qūrly körmeu", enWord: "Fall on deaf ears", kzDef: "Ешкімге назар аудармаңыз", qsDef: "Eşkımge nazar audarmañyz", enDef: "To be ignored or not noticed by other people"),
        Word(kzWord: "Ғайып болу", qsWord: "Ğaiyp bolu", enWord: "Vanish into thin air", kzDef: "Кенеттен жоғалып кету", qsDef: "Kenetten joğalyp ketu", enDef: "To disappear suddenly and completely"),
        Word(kzWord: "Көз айырмау", qsWord: "Köz aiyrmau", enWord: "Look over (something)", kzDef: "Мұқият қараңыз", qsDef: "Mūqiat qarañyz", enDef: "To examine something to see how good, big, etc. it is"),
        Word(kzWord: "Көз ілескенше", qsWord: "Köz ıleskenşe", enWord: "At once", kzDef: "Дереу; кідіріссіз", qsDef: "Dereu; kıdırıssız", enDef: "Immediately; without delay"),
    ]
    
    var modern: [Word] = [
        Word(kzWord: "Демеуші", qsWord: "Demeuşı", enWord: "Sponsor", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Аспансерік", qsWord: "Aspanserık", enWord: "Stewardess", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Ғаламтор", qsWord: "Ğalamtor", enWord: "Internet", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Құбыланам", qsWord: "Qūbylanama", enWord: "Compass", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Қолтырауын", qsWord: "Qoltyrauyn", enWord: "Crocodile", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Пернетақта", qsWord: "Pernetaqta", enWord: "Keyboard", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Қылтима", qsWord: "Qyltima", enWord: "Balcony", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Шаптырма", qsWord: "Şaptyrma", enWord: "Shower", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Уәждеме", qsWord: "Uäjdeme", enWord: "Motivation", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Тінтуір", qsWord: "Tıntuır", enWord: "Computer mouse", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Несие", qsWord: "Nesie", enWord: "Credit", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Күйсандық", qsWord: "Küisandyq", enWord: "Piano", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Баялды", qsWord: "Baialdy", enWord: "Eggplant", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Жарықтылық", qsWord: "Jaryqtylyq", enWord: "Brightness", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Кәбіл", qsWord: "Käbıl", enWord: "Cable", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Үстірттік", qsWord: "Üstırttık", enWord: "Bias", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Жүйе", qsWord: "Jüie", enWord: "System", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Дәлдік", qsWord: "Däldık", enWord: "Precision", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Бағдарламалау", qsWord: "Bağdarlamalau", enWord: "Programming", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Сапа", qsWord: "Sapa", enWord: "Quality", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Көз", qsWord: "Köz", enWord: "Source", kzDef: "", qsDef: "", enDef: ""),
        Word(kzWord: "Асқарпаз", qsWord: "Asqarpaz", enWord: "Climber", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
//        Word(kzWord: "", qsWord: "", enWord: "", kzDef: "", qsDef: "", enDef: ""),
    ]
    
    @State private var searchText = ""
    
    var filteredCognates: [Word] {
            if searchText.isEmpty {
                return cognates
            } else {
                return cognates.filter { word in
                    return word.kzWord.localizedCaseInsensitiveContains(searchText) ||
                           word.qsWord.localizedCaseInsensitiveContains(searchText) ||
                           word.enWord.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    var filteredUntranslatableKZ: [Word] {
            if searchText.isEmpty {
                return untranslatableKZ
            } else {
                return untranslatableKZ.filter { word in
                    return word.kzWord.localizedCaseInsensitiveContains(searchText) ||
                           word.qsWord.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    var filteredUntranslatableEN: [Word] {
            if searchText.isEmpty {
                return untranslatableEN
            } else {
                return untranslatableEN.filter { word in
                    return word.enWord.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    var filteredIdioms: [Word] {
            if searchText.isEmpty {
                return idioms
            } else {
                return idioms.filter { word in
                    return word.kzWord.localizedCaseInsensitiveContains(searchText) ||
                           word.qsWord.localizedCaseInsensitiveContains(searchText) ||
                           word.enWord.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
    var filteredModern: [Word] {
            if searchText.isEmpty {
                return modern
            } else {
                return modern.filter { word in
                    return word.kzWord.localizedCaseInsensitiveContains(searchText) ||
                           word.qsWord.localizedCaseInsensitiveContains(searchText) ||
                           word.enWord.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    
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
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .frame(minWidth: 0, alignment: .leading)
                        .padding(.leading, 10)
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                    TextField("", text: $searchText)
                        .padding(.trailing)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                }
                
                
                List(){
                    
                    if(category==1){
                        ForEach(filteredCognates, id: \.kzWord){ word in
                            
                            VStack(alignment: .leading){
                                
                                Text("\(word.kzWord) - \(word.qsWord) - \(word.enWord)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                
                                Text("\n\(word.kzDef) \n\n\(word.qsDef) \n\n\(word.enDef)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                
                            }.frame(width: 370, alignment: .leading)
                                .listRowBackground(Color(red: 0.77, green: 0.87, blue: 1)
                                    .opacity(0))
                            
                            
                        }
                    }
                    else if(category==2){
                        ForEach(filteredUntranslatableKZ, id: \.kzWord){ word in
                            
                            VStack(alignment: .leading){
                                
                                Text("\(word.kzWord) - \(word.qsWord)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                
                                Text("\n\(word.kzDef) \n\n\(word.qsDef) \n\n\(word.enDef)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                
                            }.frame(width: 370, alignment: .leading)
                                .listRowBackground(Color(red: 0.77, green: 0.87, blue: 1)
                                    .opacity(0))
                            
                        }
                        
                    }
                    else if(category==3){
                        
                        ForEach(filteredUntranslatableEN, id: \.enWord){ word in
                            
                            VStack(alignment: .leading){
                                Text("\(word.enWord)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                
                                Text("\n\(word.enDef) \n\n\(word.kzDef) \n\n\(word.qsDef)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                
                            }.frame(width: 370, alignment: .leading)
                                .listRowBackground(Color(red: 0.769, green: 0.87, blue: 1).opacity(0))
                        }
                        
                    }
                    else if(category==4){
                        ForEach(filteredIdioms, id: \.kzWord){ word in
                            
                            VStack(alignment: .leading){
                                
                                Text("\(word.kzWord) - \(word.qsWord) - \(word.enWord)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                
                                Text("\n\(word.kzDef) \n\n\(word.qsDef) \n\n\(word.enDef)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
                                
                            }.listRowBackground(Color(red: 0.77, green: 0.87, blue: 1)
                                .opacity(0))
                            .frame(width: 370, alignment: .leading)
                        }
                        
                    }
                    else if(category==5){
                        ForEach(filteredModern, id: \.kzWord){ word in
                            
                            VStack(alignment: .leading){
                                
                                Text("\(word.kzWord) - \(word.qsWord) - \(word.enWord)")
                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                                    .multilineTextAlignment(.leading)
//                                    .bold()
//
//                                Text("\n\(word.kzDef) \n\n\(word.qsDef) \n\n\(word.enDef)")
//                                    .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
//                                    .multilineTextAlignment(.leading)
                                
                            }.listRowBackground(Color(red: 0.77, green: 0.87, blue: 1)
                                .opacity(0))
                            .frame(width: 370, alignment: .leading)
                        }
                        
                    }
                    
                    
                }.listStyle(PlainListStyle())
                    .background(Color(red: 0.77, green: 0.87, blue: 1)
                        .opacity(0))
                    .frame(alignment: .leading)
                
                
            }.navigationTitle(title)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text(title)
                            .foregroundColor(Color(red: 0.03, green: 0.13, blue: 0.25))
                            .bold()
                    }
                }
            
            
        }
        .navigationBarBackButtonHidden()
    }
}

struct Page2_1Dictionary_Previews: PreviewProvider {
    static var previews: some View {
        Page2_1Dictionary(category: .constant(1), title: "")
    }
}



class Word{
    var kzWord: String
    var qsWord: String
    var enWord: String
    var kzDef: String
    var qsDef: String
    var enDef: String
    
    init(kzWord: String, qsWord: String, enWord: String, kzDef: String, qsDef: String, enDef: String) {
        self.kzWord = kzWord
        self.qsWord = qsWord
        self.enWord = enWord
        self.kzDef = kzDef
        self.qsDef = qsDef
        self.enDef = enDef
    }
}
