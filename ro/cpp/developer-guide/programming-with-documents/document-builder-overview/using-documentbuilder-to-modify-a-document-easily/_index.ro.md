---
title: Folosind DocumentBuilder pentru a modifica un Document cu ușurință
second_title: Aspose.Words pentru C++
articleTitle: Folosind DocumentBuilder pentru a modifica un Document cu ușurință
linktitle: Folosind DocumentBuilder pentru a modifica un Document cu ușurință
type: docs
description: "Utilizați document builder pentru a modifica un document cu ușurință în C++."
weight: 190
url: /ro/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Specificarea Formatării

### Formatarea Fontului

Formatarea curentă a fontului este reprezentată de un obiect `Font` returnat de proprietatea `DocumentBuilder.Font`. Clasa `Font` conține o mare varietate de proprietăți De font posibile în Microsoft Word. Exemplul de mai jos arată cum să setați formatarea fontului.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formatarea Paragrafului

Formatarea paragrafului curent este reprezentată de un obiect `ParagraphFormat` Care este returnat de proprietatea `DocumentBuilder.ParagraphFormat`. Acest obiect încapsulează diferite proprietăți de formatare a paragrafelor disponibile în Microsoft Word. Puteți reseta cu ușurință formatarea paragrafului la implicit la stilul Normal, aliniat la stânga, fără indentare, fără spațiere, fără margini și fără umbrire apelând `ParagraphFormat.ClearFormatting`. Exemplul de mai jos arată cum să setați formatarea paragrafului.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Lucrul cu tipografia asiatică

#### Reglați automat spațiul dintre textul asiatic și Latin, numere

Dacă proiectați un șablon cu text atât din Asia de Est, cât și din latină și doriți să îmbunătățiți aspectul șablonului de formular controlând spațiile dintre ambele tipuri de text, puteți configura șablonul de formular pentru a regla automat spațiile dintre aceste două tipuri de text. Puteți utiliza AddSpaceBetweenFarEastAndAlpha și AddSpaceBetweenFarEastAndDigit proprietățile clasei ParagraphFormat pentru a realiza acest lucru.

Următorul exemplu de cod arată cum să utilizați `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` și `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` proprietăți.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Schimbați spațierea paragrafelor asiatice și liniuțele

Următorul exemplu de cod demonstrează modul de modificare a spațiului și liniuțelor paragrafelor asiatice.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Setați Opțiunile De Întrerupere A Liniei

Fila tipografie asiatică a dialogului de proprietăți `Paragraph` din MS Word are grup de întrerupere a liniei. Opțiunile acestui grup pot fi setate folosind FarEastLineBreakControl, WordWrap, HangingPunctuation proprietățile clasei ParagraphFormat. Below code exemplu arată cum să utilizați aceste proprietăți.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formatarea Celulelor

Formatarea celulelor este utilizată în timpul construirii unui tabel. Este reprezentat de un obiect `CellFormat` returnat de proprietatea `DocumentBuilder.CellFormat`. CellFormat încapsulează diferite proprietăți ale celulelor tabelului, cum ar fi lățimea sau alinierea verticală. Exemplul de mai jos arată cum să creați un tabel care conține o singură celulă formatată.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formatarea Rândurilor

Formatarea curentă a rândului este determinată de un obiect `RowFormat` Care este returnat de proprietatea `DocumentBuilder.RowFormat`. Obiectul încapsulează informații despre toate formatarea rândurilor de tabel. Exemplul de mai jos arată cum să creați un tabel care conține o singură celulă și să aplicați formatarea rândurilor.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formatarea Listei

Aspose.Words permite crearea ușoară a listelor prin aplicarea formatării listei. DocumentBuilder oferă proprietatea `DocumentBuilder.ListFormat` care returnează un obiect `ListFormat`. Acest obiect are mai multe metode pentru a începe și a termina o listă și pentru a mări/micșora liniuța. Există două tipuri generale de liste în Microsoft Word: cu marcatori și numerotate.

- Pentru a începe o listă cu marcatori, apelați `ListFormat.ApplyBulletDefault`.
- Pentru a începe o listă numerotată, apelați `ListFormat.ApplyNumberDefault`.

Marcatorul sau numărul și formatarea sunt adăugate la paragraful curent și toate paragrafele ulterioare create folosind **DocumentBuilder** până când `ListFormat.RemoveNumbers` este apelat pentru a opri formatarea listei cu marcatori. În documentele Word, listele pot consta din până la nouă niveluri. Formatarea listei pentru fiecare nivel specifică ce glonț sau număr este utilizat, liniuța stângă, spațiul dintre glonț și text etc.

- Pentru a mări nivelul listei paragrafului curent cu un nivel, apelați `ListFormat.ListIndent`.
- Pentru a reduce nivelul listei paragrafului curent cu un nivel, apelați `ListFormat.ListOutdent`.

Metodele modifică nivelul listei și aplică proprietățile de formatare ale noului nivel.

{{% alert color="primary" %}}

De asemenea, puteți utiliza proprietatea `ListFormat.ListLevelNumber` pentru a obține sau a seta nivelul listei pentru paragraf. Nivelurile listei sunt numerotate de la 0 la 8.

{{% /alert %}}

Exemplul de mai jos arată cum să construiți o listă pe mai multe niveluri.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Configurarea paginii și formatarea secțiunii

Configurarea paginii și proprietățile secțiunii sunt încapsulate în obiectul `PageSetup` Care este returnat de proprietatea `DocumentBuilder.PageSetup`. Obiectul conține toate atributele de configurare a paginii unei secțiuni (marginea stângă, marginea de jos, dimensiunea hârtiei și așa mai departe) ca proprietăți. Exemplul de mai jos arată cum să setați proprietăți precum dimensiunea paginii și orientarea pentru secțiunea curentă.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Aplicarea unui stil

Unele obiecte de formatare, cum ar fi Font sau ParagraphFormat, acceptă stiluri. Un singur stil încorporat sau definit de utilizator este reprezentat de un obiect `Style` care conține proprietățile stilului corespunzătoare, cum ar fi numele, stilul de bază, fontul și formatarea paragrafului stilului și așa mai departe.

Mai mult, un obiect **Style** furnizează proprietatea `Style.StyleIdentifier` care returnează un identificator de stil independent de localizare reprezentat de o valoare de enumerare **Style.StyleIdentifier**. Ideea este că numele stilurilor încorporate în Microsoft Word sunt localizate pentru diferite limbi. Folosind un identificator de stil, puteți găsi stilul corect indiferent de limba documentului. Valorile de enumerare corespund stilurilor încorporate Microsoft Word, cum ar fi Normal, Heading 1, Heading 2 etc. Toate stilurile definite de utilizator sunt atribuite **StyleIdentifier.User value**. Exemplul de mai jos arată cum să aplicați un stil de paragraf.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Frontiere și umbrire

Frontierele sunt reprezentate de BorderCollection. Aceasta este o colecție de obiecte de frontieră care sunt accesate prin index sau prin tipul de frontieră. Tipul de frontieră este reprezentat de enumerarea `BorderType`. Unele valori ale enumerării sunt aplicabile mai multor sau unui singur element de document. De exemplu, `BorderType.Bottom` este aplicabil unui paragraf sau unei celule de tabel, în timp ce `BorderType.DiagonalDown` specifică marginea diagonală numai într-o celulă de tabel.

Atât colecția de chenar, cât și fiecare chenar separat au atribute similare, cum ar fi culoarea, stilul liniei, lățimea liniei, distanța față de text și umbra opțională. Ele sunt reprezentate de proprietăți cu același nume. Puteți obține diferite tipuri de margini combinând valorile proprietății. În plus, ambele obiecte **BorderCollection** și **Border** vă permit să resetați aceste valori la valorile implicite apelând metoda `Border.ClearFormatting`. Rețineți că atunci când proprietățile chenarului sunt resetate la valorile implicite, chenarul este invizibil. Clasa `Shading` conține atribute de umbrire pentru elementele documentului. Puteți seta textura de umbrire dorită și culorile care sunt aplicate pe fundalul și prim-planul elementului.

Textura de umbrire este setată cu o valoare de enumerare `TextureIndex` care permite aplicarea diferitelor modele obiectului **Shading**. De exemplu, pentru a seta o culoare de fundal pentru un element de document, utilizați valoarea `TextureIndex.TextureSolid` și setați culoarea de umbrire în prim plan, după caz. Exemplul de mai jos arată cum să aplicați margini și umbrire la un paragraf.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Fixați la grilă

Aspose.Words oferă două proprietăți `ParagraphFormat.SnapToGrid` și `Font.SnapToGrid` pentru a obține și a seta proprietatea paragrafului snap la grilă.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Mutarea cursorului

### Detectarea poziției curente a cursorului

Puteți obține în cazul în care cursorul constructorului este poziționat în prezent în orice moment. Proprietatea `DocumentBuilder.CurrentNode` returnează nodul care este selectat în prezent în acest constructor. Nodul este un copil direct al unui paragraf. Orice operații de inserare pe care le efectuați folosind `DocumentBuilder` se vor insera înainte de `DocumentBuilder.CurrentNode`. Când paragraful curent este gol sau cursorul este poziționat chiar înainte de sfârșitul paragrafului, `DocumentBuilder.CurrentNode` returnează null.

De asemenea, puteți utiliza proprietatea `DocumentBuilder.CurrentParagraph`, care primește paragraful selectat în prezent în acest **DocumentBuilder**. Exemplul de mai jos arată cum să accesați nodul curent într-un constructor de documente. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Mutarea la orice nod (paragrafe și copiii lor)

Dacă aveți un nod obiect document, care este un paragraf sau un copil direct al unui paragraf, puteți îndrepta cursorul constructorului către acest nod. Utilizați metoda `DocumentBuilder.MoveTo` pentru a efectua acest lucru. Exemplul de mai jos arată cum să mutați o poziție a cursorului într-un nod specificat. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Trecerea la începutul/sfârșitul documentului

Dacă trebuie să vă mutați la începutul documentului, apelați `DocumentBuilder.MoveToDocumentStart`. Dacă trebuie să vă deplasați la sfârșitul documentului, apelați `DocumentBuilder.MoveToDocumentEnd`. Exemplul de mai jos arată cum să mutați o poziție a cursorului la începutul sau la sfârșitul unui document. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Trecerea la o secțiune

Dacă lucrați cu un document care conține mai multe secțiuni, puteți trece la o secțiune dorită folosind `DocumentBuilder.MoveToSection`. Această metodă mută cursorul la începutul unei secțiuni specificate și acceptă indexul secțiunii necesare. Când indicele secțiunii este mai mare sau egal cu 0, acesta specifică un index de la începutul documentului cu 0 fiind prima secțiune. Când indexul secțiunii este mai mic de 0, acesta specifică un index de la sfârșitul documentului cu -1 fiind ultima secțiune. Exemplul de mai jos arată cum să mutați o poziție a cursorului în secțiunea specificată. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Trecerea la un antet/subsol

Când trebuie să plasați unele date într-un antet sau subsol, ar trebui să vă mutați mai întâi acolo folosind `DocumentBuilder.MoveToHeaderFooter`. Metoda acceptă o valoare de enumerare HeaderFooterType care identifică tipul de antet sau subsol unde ar trebui mutat cursorul. Dacă doriți să creați anteturi și subsoluri diferite pentru prima pagină, trebuie să setați proprietatea `PageSetup.DifferentFirstPageHeaderFooter` la **true**. Dacă doriți să creați anteturi și subsoluri diferite pentru paginile pare și impare, trebuie să setați `PageSetup.OddAndEvenPagesHeaderFooter` la **true**.

Dacă trebuie să reveniți la povestea principală, utilizați **DocumentBuilder.MoveToSection** pentru a vă deplasa din antet sau subsol. Exemplul de mai jos creează anteturi și subsoluri într-un document folosind DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Trecerea la un paragraf

Utilizați `DocumentBuilder.MoveToParagraph` pentru a muta cursorul la un paragraf dorit din secțiunea curentă. Ar trebui să treceți doi parametri la această metodă: paragraphIndex (indexul paragrafului la care să vă deplasați) și characterIndex (indexul caracterului din interiorul paragrafului).

Navigarea se efectuează în interiorul poveștii curente a secțiunii curente. Adică, dacă ați mutat cursorul în antetul principal al primei secțiuni, atunci paragraphIndex specifică indexul paragrafului din antetul acelei secțiuni.

Când paragraphIndex este mai mare sau egal cu 0, specifică un index de la începutul secțiunii cu 0 fiind primul paragraf. Când paragraphIndex este mai mic decât 0, specifică un index de la sfârșitul secțiunii cu -1 fiind ultimul paragraf.

Indexul de caractere poate fi specificat în prezent doar ca 0 pentru a trece la începutul paragrafului sau -1 pentru a trece la sfârșitul paragrafului. Exemplul de mai jos arată cum să mutați o poziție a cursorului la paragraful specificat. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Trecerea la o celulă de masă

Utilizați `DocumentBuilder.MoveToCell` dacă trebuie să mutați cursorul într-o celulă de tabel din secțiunea curentă. Această metodă acceptă patru parametri:

- tableIndex - indexul tabelului pentru a trece la.
- rowIndex - indexul rândului din tabel.
- columnIndex - indexul coloanei din tabel.
- characterIndex - indexul caracterului din interiorul celulei.

Navigarea se efectuează în interiorul poveștii curente a secțiunii curente. Pentru parametrii indexului, atunci când indexul este mai mare sau egal cu 0, Acesta specifică un index de la început cu 0 fiind primul element. Când indexul este mai mic de 0, Acesta specifică un index de la sfârșit cu -1 fiind ultimul element.

De asemenea, rețineți că characterIndex în prezent poate specifica doar 0 pentru a trece la începutul celulei sau -1 pentru a trece la sfârșitul celulei. Exemplul de mai jos arată cum să mutați o poziție a cursorului în celula de tabel specificată. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Trecerea la un marcaj

Marcajele sunt utilizate frecvent pentru a marca anumite locuri din document în care trebuie inserate elemente noi. Pentru a trece la un marcaj, utilizați `DocumentBuilder.MoveToBookmark`. Această metodă are două supraîncărcări. Cel mai simplu nu acceptă altceva decât numele marcajului în care urmează să fie mutat cursorul. Exemplul de mai jos arată cum să mutați o poziție a cursorului într-un marcaj. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Această suprasarcină mută cursorul într-o poziție imediat după începerea marcajului cu numele specificat. O altă suprasarcină `DocumentBuilder.MoveToBookmark` mută cursorul la un marcaj cu o precizie mai mare. Acceptă doi parametri booleni suplimentari:

- isStart determină dacă să mutați cursorul la începutul sau la sfârșitul marcajului.
- isAfter determină dacă să mutați cursorul pentru a fi după poziția de început sau de sfârșit a marcajului sau să mutați cursorul pentru a fi înainte de poziția de început sau de sfârșit a marcajului.

Exemplul de mai jos arată cum să mutați o poziție a cursorului imediat după sfârșitul marcajului.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Comparația pentru ambele metode nu este sensibilă la majuscule și minuscule.

Introducerea unui text nou în acest mod nu înlocuiește textul existent al marcajului. Rețineți că unele marcaje din document sunt atribuite câmpurilor de formular. Trecerea la un astfel de marcaj și introducerea textului acolo introduce textul în codul câmpului formularului. Deși acest lucru nu va invalida câmpul Formular, textul inserat nu va fi vizibil deoarece devine parte a codului câmpului.

## Cum se convertește între unitățile de măsură

Majoritatea proprietăților obiectului furnizate în Aspose.Words API care reprezintă o anumită măsurare (lățime/înălțime, margini și distanțe diferite) acceptă valori în puncte (1 inch este egal cu 72 puncte). Uneori acest lucru nu este convenabil, deci există clasa `ConvertUtil` care oferă funcții de ajutor pentru a converti între diferite unități de măsură. Permite conversia inci în puncte, puncte în inci, pixeli în puncte și puncte în pixeli. Când pixelii sunt convertiți în puncte și invers, acesta poate fi efectuat la rezoluții 96 dpi (puncte pe inch) sau la rezoluția dpi specificată.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
