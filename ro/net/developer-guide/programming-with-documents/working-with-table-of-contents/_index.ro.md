---
title: Lucrul cu `Table of Contents` în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu `Table of Contents
linktitle: Lucrul cu `Table of Contents
description: "Câmpul Tabelă de Conținut în detalii. Cum să creezi şi modifici `TOC` câmp folosind C#. Inseraţi `TOC` C#."
type: docs
weight: 170
url: /ro/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

De multe ori vei lucra cu documente care conțin o listă de conţinuturi (TOC). Utilizând Aspose.Words, puteți insera propria dumneavoastră masă de conținut sau să reconstruiți complet un cuprins existent în document utilizând doar câteva linii de cod. Acest articol descrie modul de a lucra cu câmpul tabelului conținuturilor și demonstrează:

- Cum se inserează un `TOC` complet nou?
- Actualizează noile sau existente TOC în documentul.
- Specificați comutatoare pentru a controla formatarea și structura generală a TOC-ului.
- Cum se modifică stilurile și aspectul tabelului de conținuturi.
"- Cum să elimini întregul câmp `TOC` împreună cu toate intrările din document."

## Inserează Tabele de Conținut Programatic

Puteți insera un `TOC` (tabela de conținuturi) câmp în documentul la poziția curentă prin apelarea [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) metoda.

O masă de conținut într-un document Word poate fi construită în mai multe moduri și formatată folosind o varietate de opțiuni. Câmpurile de schimbare pe care le treci metodei controlează modul în care tabelul este construit și afișat în documentul tău.

Comutatoarele implicite utilizate într-un `TOC` inserat în Microsoft Word sunt **"\o 1-3 \h \z \u"**. Descrierea acestor comutatoare, precum și o listă cu comutatoare suportate poate fi găsită mai târziu în articol. Poţi fie folosi ghidul pentru a obţine întrerupătoarele corecte, fie dacă deja ai un document care conţine asemănătorul `TOC` pe care îl vrei poţi arăta codurile de câmp (*ALT+F9*) şi copia întrerupătoarele direct din câmp.

Exemplul următor de cod arată cum să inserezi un câmp Tabela Conținuturilor într-un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Exemplul de cod următor arată cum se introduce un conținut (TOC) într-un document folosind stiluri de antet ca intrări.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Fără metodele folosite în exemplu, când deschizi documentul de ieșire, vei găsi câmpul `TOC`, dar fără conținut vizibil. Acest lucru se datorează faptului că câmpul `TOC` a fost inserat, dar nu este încă populat până când este actualizat în document. Mai multe informații despre asta se discută în secțiunea următoare.

{{% /alert %}}

## Actualizare Tabela de Cuprins

Aspose.Words vă permite să actualizați complet un `TOC` cu doar câteva linii de cod. Acest lucru poate fi realizat pentru a popula un nou inserat `TOC` sau pentru a actualiza un `TOC` existent după ce s-au făcut modificări la document. Următoarele două metode trebuie utilizate pentru a actualiza `TOC` câmpurile în document:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Vă rugăm să rețineți că aceste două metode de actualizare trebuie să fie apelate în acea ordine. Dacă se inversează, tabelul de conținut va fi populat dar nu vor fi afișate numerele paginilor. Orice număr de TOC-uri diferite pot fi actualizate. Aceste metode vor actualiza automat toate TOC-urile găsite în document.

Exemplul de cod următor arată cum să se reconstruiască complet câmpurile `TOC` din document prin invocarea actualizării câmpului:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

Prima apelare la **UpdateFields** va construi `TOC`, toate intrările text sunt populate și `TOC` apare aproape completă. Singurul lucru lipsă sunt numerele paginilor care, pentru moment, se afișează cu "?". A doua chemare la **UpdatePageLayout** va construi aspectul documentului în memorie. Acest lucru trebuie să fie făcut pentru a aduna numerele paginilor intrărilor. Numerele corecte de pagină calculate din această chemare sunt apoi inserate în TOC.

## Utilizați comutatoare pentru a controla comportamentul tabelului de conținuturi

Ca în orice alt domeniu de câmp, domeniul `TOC` poate accepta comutatoare definite în cadrul codului de câmp care controlează modul în care este construită lista de conținuturi. Sunt folosite anumite comutatoare pentru a controla intrările care sunt incluse și la ce nivel, în timp ce altele sunt utilizate pentru a controla aspectul de la TOC. Comutatoarele pot fi combinate împreună pentru a permite producerea unei tabele de conținut complexe.

![working-with-table-of-contents-aspose-words-net](working-with-table-of-contents-1.png)


În mod implicit, aceste comutatoare de mai sus sunt incluse atunci când se introduce un exemplu implicit `TOC` în document. Un `TOC` fără comutatoare va include conținut de la stilurile de antet încorporate (ca și cum s-ar seta comutatorul \O). Comutatoarele `TOC` disponibile susţinute de Aspose.Words sunt enumerate mai jos şi utilizările lor sunt descrise în detaliu. Ei pot fi împărțiți în secțiuni separate pe baza tipului lor. Comutatoarele din prima secțiune definesc ce conținut să includă în `TOC` iar comutatoarele din a doua secțiune controlează aspectul de aspect al TOC-ului. Dacă o comutare nu este enumerată aici atunci este în prezent neacceptată. Toate comutările vor fi acceptate în versiuni viitoare. Adăugăm din ce în ce mai multă asistență cu fiecare lansare.

### Comutatoare de etichetare a intrărilor

| Comutator | Descrierea |
| :- | :- |
| **Heading Styles** <br>*(\O Comutator)* | <p>Acest comutator definește că `TOC` ar trebui să fie construit de la stilurile de antet încorporate. În Microsoft Word acestea sunt definite de Heading 1 - Heading 9. În Aspose.Words aceste stiluri sunt reprezentate de enumerarea corespunzătoare a StyleIdentifier. Această enumerare reprezintă un identificator independent de locație al unui stil, pentru exemplu `StyleIdentifier.Heading1` reprezintă stilul antetului 1. Folosind acest lucru, formatarea și proprietățile stilului pot fi recuperate din colecția de stil a documentului. Clasa de stil corespunzătoare poate fi recuperată din colecția `Document.Styles` folosind proprietatea indexată de tip StyleIdentifier. <p>![working-with-table-of-contents-styles](working-with-table-of-contents-2.png)</p><p>Orice conținut formatat cu aceste stiluri sunt incluse în tabelul de conținut.</p> Nivelul titlului va defini nivelul ierarhic corespunzător al intrării în TOC. De exemplu, un paragraf cu stilul de antet 1 va fi tratat ca primul nivel în `TOC`, în timp ce un paragraf cu antetul 2 va fi tratat ca următorul nivel în ierarhie și așa mai departe.</p> |
| **Outline Levels** <br>*(\switch)* | <p>Fiecare paragraf poate defini un nivel de schiță sub Opțiuni de paragrafe. <p>![working-with-table-of-contents-paragraph](working-with-table-of-contents-3.png)</p><p>Acest set dictează nivelul la care ar trebui tratat acest punct în ierarhia documentelor.</p> Aceasta este o practică folosită frecvent pentru a structura ușor aspectul unui document. Această ierarhie poate fi vizualizată prin comutarea la "Vizualizare în linie" în Microsoft Word. Similar cu stilurile de antet, pot exista 1 – 9 niveluri de enumerare în plus față de nivelul "Text de corp. Nivelurile de planificare 1 - 9 vor apărea în `TOC` la nivelul corespunzător din ierarhie <br>Orice conținut cu un nivel de planificare, fie setat în stilul de paragraful sau direct pe paragraful însuși, este inclus în TOC. În Aspose.Words nivelul de contur este reprezentat de proprietatea `ParagraphFormat.OutlineLevel` a nodului Paragraf. Nivelul de contur al unui stil paragraf este reprezentat în același mod prin proprietatea `Style.ParagraphFormat`</p> <p>{{% alert color="primary" %}}</p> <p>Observați că stilurile încorporate de titlu, cum ar fi Titlu 1 au un nivel de contur obligatoriu setat în setările de stil.</p> <p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\T comutator) * | <p>Această comutare va permite să se folosească stiluri personalizate când se colectează intrări pentru a fi utilizate în TOC. Aceasta este folosită adesea în combinație cu comutatorul \O pentru a include stiluri personalizate împreună cu stilurile de antet încorporate în TOC. <br>Parametrii comutatorului ar trebui să fie încadrați în semne de citare. Multe stiluri personalizate pot fi incluse, pentru fiecare stil numele ar trebui să fie specificat urmat de o virgulă și apoi de nivelul la care stilul trebuie să apară în `TOC` ca. Alte stiluri sunt de asemenea separate cu o virgulă. <br>De exemplu:</p> <p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p> <p>va folosi conținutul stilat cu CustomHeading1 ca și conținut de nivel 1 în `TOC` și CustomHeading2 ca și conținut de nivel 2.</p> |
| **Use TC Fields** <br>*(\F și \L Comutatoare) * | <p>În versiunile anterioare ale Microsoft Word, singura modalitate de a construi o `TOC` era prin utilizarea câmpurilor TC. Aceste câmpuri sunt introduse ascunse în document chiar și atunci când codurile de câmp sunt afișate. Ei includ textul care ar trebui să fie afișat în intrarea și `TOC` este construit din ei. Această funcționalitate nu este acum folosită foarte des, dar poate fi încă utilă în anumite cazuri pentru a include intrări în `TOC`, care nu sunt indentate să fie vizibile în document. <br>Când sunt inserați, aceste câmpuri par ascunse chiar și atunci când codul câmpului este afișat. Ei nu pot fi văzuți fără să dezvăluie conținut ascuns. Pentru a vedea aceste câmpuri, "arată formatarea paragrafului trebuie selectat". <p>![working-with-table-of-contents-paragraph-settings](working-with-table-of-contents-4.png)</p>Aceste câmpuri pot fi inserate într-un document în orice poziţie ca orice alt câmp şi sunt reprezentate de enumerarea `FieldType.FieldTOCEntry`. <br/>Comutatorul \F într- un `TOC` este utilizat pentru a specifica faptul că câmpurile TC trebuie utilizate ca intrări. Comutatorul pe cont propriu fără niciun identificator suplimentar înseamnă că orice câmp TC din document va fi inclus. Orice parametru suplimentar, adesea o singură literă, va desemna că numai câmpurile TC care au un comutator \f corespunzător vor fi incluse în TOC. De exemplu *<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p><p>va include doar câmpurile TC, cum ar fi </p><p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p><p>Câmpul `TOC` are, de asemenea, un întrerupător asociat, comutatorul "\L" specifică faptul că sunt incluse doar câmpurile TC cu niveluri în intervalul specificat. </p><p>![todo:image_alt_text](working-with-table-of-contents-5.png)</p><p>Câmpurile pot fi setate şi cu întrerupătoare.</p> Acestea sunt:<p>- *\F  *</p><p>- *\L </p> Un `TOC` care utilizează același comutator va include acest câmp TC numai dacă acesta se încadrează în intervalul specificat. *<p>- Da. Nu este afișată numerotarea paginii pentru această intrare `TOC`. Codul eșantionului de modul de inserare a câmpurilor TC poate fi găsit în secțiunea următoare.</p></p> |

### Comutatoarele legate de aspect

| Comutare | Descrierea |
| :- | :- |
| **Omit Page Numbers** <br>*(\N Comutator)* | <p>Acest comutator este folosit pentru a ascunde numerele paginilor pentru anumite niveluri din MSO. De exemplu, puteți defini <p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p> <p></p> și numerele paginilor din intrările nivelurilor 3 și patru vor fi ascunse împreună cu punctele de conducere (dacă există). Pentru a specifica doar un nivel, ar trebui încă să se utilizeze o gamă, de exemplu "1-1" va exclude numerele paginilor numai pentru primul nivel. <br>Nu furnizând un interval de nivel va omite numerele paginilor pentru toate nivelurile în TOC. Este util să se stabilească atunci când se exportează un document către HTML sau o formă similară. Aceasta este deoarece formatul bazat pe HTML nu are nici un concept de pagină și astfel nu au nevoie de nici o numerotare a paginilor. <p>![todo:image_alt_text](working-with-table-of-contents-6.png)</p></p> |
| **Insert As Hyperlinks** <br>*(\H Comutator)* | <p>Această comutare specifică faptul că `TOC` intrări sunt inserate ca hiperlink-uri. Când vizualizați un document în Microsoft Word, aceste intrări vor apărea încă ca text normal în interiorul `TOC`, dar sunt hiperlegate și astfel pot fi utilizate pentru a naviga către poziția intrării originale din document utilizând *Ctrl + Click stânga* în Microsoft Word. Când această comutare este inclusă atunci aceste legături sunt de asemenea păstrate și în alte formate. De exemplu în formate bazate pe HTML, inclusiv EPUB și formate randate cum ar fi PDF și XPS acestea vor fi exportate ca linkuri de lucru. <br>Fără această comutare, setată `TOC` în toate aceste ieșiri va fi exportat ca text simplu și nu va demonstra acest comportament. Dacă un document este deschis în MS Word, textul intrărilor nu va fi de asemenea clicabil în acest fel, dar numerele paginilor pot fi încă utilizate pentru a naviga la intrarea originală. <p>![working-with-table-of-contents-titles](working-with-table-of-contents-7.png)</p></p> |
| **Set Separator Character** <br>*(\P Comutator)* | <p>Această comutare permite conținutul separării titlului intrării și numărarea paginilor să fie schimbat cu ușurință în TOC. Separatorul de utilizat ar trebui să fie specificat după acest comutator și închis în ghilimele. <br>Contrar a ceea ce este documentat în Office Documentation, se poate folosi doar un singur caracter în loc de până la cinci. Acesta este valabil pentru atât MS Word cât și Aspose.Words. <br>Utilizarea acestui comutator nu este recomandată deoarece nu permite mult control asupra ceea ce se folosea pentru a separa intrările și numerele paginilor în TOC. În schimb, se recomandă să editezi stilul corespunzător `TOC`, cum ar fi `StyleIdentifier.TOC1`, și de acolo să editezi stilul lider cu acces la membri de font specifici etc. Mai multe detalii despre cum se face asta pot fi găsite mai târziu în articol. <p>![working-with-table-of-contents-toc](working-with-table-of-contents-8.png)</p></p> |
| **Preserve Tab Entries** <br>*(\W Switch)* | <p>Folosirea acestui comutator va specifica că orice intrări care au un caracter tab, de exemplu o antet care are un tab la sfârșitul liniei, va fi păstrată ca un caracter tab corect atunci când se popula TOC-ul. Aceasta înseamnă că funcția caracterului tab va fi prezent în `TOC` și poate fi utilizată pentru a formata intrarea. De exemplu, unele intrări pot folosi tab-uri și caractere tab pentru a spația uniform textul. Atâta timp cât nivelul corespunzător `TOC` definește oprirea de tabulare echivalentă, atunci intrările generate `TOC` vor apărea cu spațiu similar. <br><br>În aceeași situație dacă această comutare nu a fost definită atunci caracterele de filă ar fi convertite la spațiu alb echivalent ca filele care nu funcționează. Rezultatul nu ar apărea așa cum se aștepta. <p>![working-with-table-of-contents-aspose](working-with-table-of-contents-9.png)</p></p> |
| **Preserve New Line Entries** <br>*(\X Comutator)* | <p>Similar cu comutatorul de mai sus, acest comutator specifică că anteturile care se întind pe mai multe linii (utilizând caracterele de nouă linie nu paragrafe separate) vor fi păstrate așa cum sunt în TOC generat. De exemplu, un antet care este să se răspândească pe mai multe linii poate folosi caracterul de nouă linie (Ctrl + Enter sau `ControlChar.LineBreak` ) pentru a separa conținutul pe diferite linii. Cu această comutare specificată, intrarea din `TOC` va păstra aceste caractere de nouă linie așa cum se arată mai jos. <br><br>În această situație dacă comutatorul nu este definit atunci caracterele de nouă linie sunt convertite într-un singur spațiu alb. <p>![working-with-table-of-contents-aspose-words](working-with-table-of-contents-10.png)</p></p> |

## Inserează câmpuri TC

Puteţi insera un câmp nou TC în poziţia curentă a [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) prin apelarea metodei [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) şi specificând numele câmpului ca "TC", împreună cu orice comutatoare necesare.

Exemplul următor de cod arată cum să introducem un câmp `TC` în document folosind **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

De multe ori o linie specifică de text este desemnată pentru `TOC` și este marcată cu un câmp `TC`. Modul ușor de a face asta în Microsoft Word este să evidențiezi textul și să apeși *ALT+SHIFT+O*. Acest lucru creează automat un `TC` câmp folosind textul selectat. Aceeași tehnică poate fi obținută prin cod. Codul de mai jos va găsi text care se potrivește cu intrare și va insera un `TC` câmp în aceeași poziție cu text. Codul se bazează pe aceeași tehnică utilizată în articol.

Exemplul de cod următor arată cum să găsești și să introduci un câmp `TC` text într-un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Modifică Tabelul de Conținut

Formatarea intrărilor în `TOC` nu folosesc stilurile originale ale intrărilor marcate, în schimb fiecare nivel este formatat folosind un stil echivalent `TOC`. De exemplu primul nivel din `TOC` este formatat cu stilul **TOC1**, al doilea nivel este formatat cu stilul **TOC2** şi aşa mai departe. Acest lucru înseamnă că pentru a schimba aspectul acestor `TOC` aceste stiluri trebuie modificate. În Aspose.Words aceste stiluri sunt reprezentate de locala independentă `StyleIdentifier.TOC1` până la `StyleIdentifier.TOC9` și pot fi recuperate din colecția [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) utilizând aceste identificatori.

Odată ce stilul adecvat al documentului a fost recuperat, formatarea pentru acest stil poate fi modificată. Orice modificări ale acestor stiluri vor fi reflectate automat în TOC-urile din document.

Exemplul următor de cod schimbă o proprietate de formatare utilizată în primul nivel `TOC` stil:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Este, de asemenea, util să rețineți că orice formatare directă a unui paragraf (definit pe paragraful în sine și nu în stil) marcat pentru a fi inclus în `TOC` va fi copiat peste în intrarea în TOC. De exemplu, dacă stilul Heading 1 este utilizat pentru a marca conținutul pentru `TOC` și acest stil are formatare bold în timp ce paragraful are de asemenea formatare cursivă aplicată direct. Intrarea rezultată `TOC` nu va fi îngroșată ca acesta este o parte din formatare stil, dar va fi cursivă deoarece aceasta este direct formatată pe paragraful.

De asemenea, puteți controla formatarea separatorilor folosiți între fiecare intrare și număr de pagină. În mod implicit, aceasta este o linie punctată care este răspândită pe pagină numărând folosind un caracter tab și o linie de tab-oprire dreaptă aliniate aproape de marginea dreaptă.

Folosind clasa [Style](https://reference.aspose.com/words/net/aspose.words/style/) recuperată pentru nivelul specific `TOC` pe care doriți să-l modificați, puteți, de asemenea, să modificați modul în care acestea apar în document. Pentru a modifica cum apare, mai întâi [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) trebuie să fie apelat pentru a recupera formatarea paragrafului pentru stilul. Din aceasta se pot recupera oprirea de tab prin apelarea [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) și oprirea de tab corespunzătoare poate fi modificată. Folosind tehnica aceea, bara în sine poate fi mutată sau chiar eliminată.

Exemplul următor de cod arată cum să modifici poziția drepte a tab-ului în `TOC` paragrafe conexe:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Scădeţi Tabelele de Conţinut din Document

O listă de conținut poate fi eliminată din document prin eliminarea tuturor nodurilor găsite între nodul `FieldStart` și FieldEnd de `TOC` câmp. Codul de mai jos demonstrează acest lucru. Eliminarea câmpului `TOC` este mai simplă decât un câmp obișnuit deoarece nu păstrăm evidența câmpurilor încastrate. În schimb verificăm că nodul [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) este de tip [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), ceea ce înseamnă că am întâlnit capătul TOC-ului curent. Această tehnică poate fi utilizată în acest caz fără a vă îngrijora cu privire la câmpuri imbricate deoarece putem presupune că orice document bine format nu va avea un câmp complet imbricat `TOC` într-un alt câmp `TOC`.

În primul rând, nodurile [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) ale fiecărui `TOC` sunt colectate și stocate. Specificația dată `TOC` este apoi enumerată astfel încât toate nodurile din câmp să fie vizitate și stocate. Nodurile sunt apoi eliminate din document.

Exemplul de cod de mai jos prezintă modul în care se elimină un `TOC` specific dintr-un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Extrageți Tabelul de Cuprins

Dacă doriți să extrageți o masă de conținut dintr-un oricare document Word, următorul eșantion de cod poate fi utilizat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
