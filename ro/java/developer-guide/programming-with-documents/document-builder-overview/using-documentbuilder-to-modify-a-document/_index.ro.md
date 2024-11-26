---
title: Folosind DocumentBuilder pentru a modifica un Document
second_title: Aspose.Words pentru Java
articleTitle: Folosind DocumentBuilder pentru a modifica un Document
linktitle: Folosind DocumentBuilder pentru a modifica un Document
type: docs
description: "Utilizați document builder pentru a modifica un document cu ușurință în Java."
weight: 20
url: /ro/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Specificarea Formatării

### Formatarea Fontului

Formatarea curentă a fontului este reprezentată de un obiect `Font` returnat de proprietatea `DocumentBuilder.Font`. Clasa `Font` conține o mare varietate de proprietăți De font posibile în Microsoft Word.

| ![font-formatting-aspose-words-java](documentbuilder-to-modify-document-1.png) |
| :- |
Următorul exemplu de cod arată cum să setați formatarea fontului.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatarea Celulelor

Formatarea celulelor este utilizată în timpul construirii unui tabel. Este reprezentat de un obiect `CellFormat` returnat de proprietatea `DocumentBuilder.CellFormat`. CellFormat încapsulează diferite proprietăți ale celulelor tabelului, cum ar fi lățimea sau alinierea verticală.

| ![cell-formatting-aspose-words-java](documentbuilder-to-modify-document-2.png) |
| :- |
Următorul exemplu de cod arată cum se creează un tabel care conține o singură celulă formatată.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatarea Rândurilor

Formatarea curentă a rândului este determinată de un obiect `RowFormat` Care este returnat de proprietatea `DocumentBuilder.RowFormat`. Obiectul încapsulează informații despre toate formatarea rândurilor de tabel.

| ![row-formatting-aspose-words-java](documentbuilder-to-modify-document-3.png) |
| :- |
Exemplul below code arată cum să creați un tabel care conține o singură celulă și să aplicați formatarea rândurilor.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatarea Listei

Aspose.Words permite crearea ușoară a listelor prin aplicarea formatării listei. DocumentBuilder oferă proprietatea `DocumentBuilder.ListFormat` care returnează un obiect `ListFormat`. Acest obiect are mai multe metode pentru a începe și a termina o listă și pentru a mări/micșora liniuța.

| ![list-fformatting-aspose-words-java](documentbuilder-to-modify-document-4.png) |
| :- |
Există două tipuri generale de liste în Microsoft Word: cu marcatori și numerotate.

- Pentru a începe o listă cu marcatori, apelați [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Pentru a începe o listă numerotată, apelați [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Marcatorul sau numărul și formatarea sunt adăugate la paragraful curent și toate paragrafele ulterioare create folosind **DocumentBuilder** până când [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) este apelat pentru a opri formatarea listei cu marcatori.

În documentele Word, listele pot consta din până la nouă niveluri. Formatarea listei pentru fiecare nivel specifică ce glonț sau număr este utilizat, liniuța stângă, spațiul dintre glonț și text etc.

- Pentru a mări nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Pentru a reduce nivelul listei paragrafului curent cu un nivel, apelați [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Metodele modifică nivelul listei și aplică proprietățile de formatare ale noului nivel.

{{% alert color="primary" %}}

De asemenea, puteți utiliza proprietatea [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) pentru a obține sau a seta nivelul listei pentru paragraf. Nivelurile listei sunt numerotate de la 0 la 8.

{{% /alert %}}

Următorul exemplu de cod arată cum să construiți o listă pe mai multe niveluri.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configurarea paginii și formatarea secțiunii

Configurarea paginii și proprietățile secțiunii sunt încapsulate în obiectul `PageSetup` Care este returnat de proprietatea `DocumentBuilder.PageSetup`. Obiectul conține toate atributele de configurare a paginii unei secțiuni (marginea stângă, marginea de jos, dimensiunea hârtiei și așa mai departe) ca proprietăți.

| ![section-formatting-aspose-words-java](documentbuilder-to-modify-document-5.png) |
| :- |
Următorul exemplu de cod arată cum să setați proprietăți precum dimensiunea paginii și orientarea pentru secțiunea curentă.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Aplicarea unui stil

Unele obiecte de formatare, cum ar fi Font sau ParagraphFormat, acceptă stiluri. Un singur stil încorporat sau definit de utilizator este reprezentat de un obiect `Style` care conține proprietățile stilului corespunzătoare, cum ar fi numele, stilul de bază, fontul și formatarea paragrafului stilului și așa mai departe.

Mai mult, un obiect **Style** furnizează proprietatea [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) care returnează un identificator de stil independent de localizare reprezentat de o valoare de enumerare **Style.StyleIdentifier**. Ideea este că numele stilurilor încorporate în Microsoft Word sunt localizate pentru diferite limbi. Folosind un identificator de stil, puteți găsi stilul corect indiferent de limba documentului. Valorile de enumerare corespund stilurilor încorporate Microsoft Word, cum ar fi Normal, Heading 1, Heading 2 etc. Toate stilurile definite de utilizator sunt atribuite **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](documentbuilder-to-modify-document-6.png) |
| :- |
Următorul exemplu de cod arată cum să aplicați un stil de paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Frontiere și umbrire

Frontierele sunt reprezentate de BorderCollection. Aceasta este o colecție de obiecte de frontieră care sunt accesate prin index sau prin tipul de frontieră. Tipul de frontieră este reprezentat de enumerarea `BorderType`. Unele valori ale enumerării sunt aplicabile mai multor sau unui singur element de document. De exemplu, `BorderType.Bottom` este aplicabil unui paragraf sau unei celule de tabel, în timp ce `BorderType.DiagonalDown` specifică marginea diagonală numai într-o celulă de tabel.

Atât colecția de chenar, cât și fiecare chenar separat au atribute similare, cum ar fi culoarea, stilul liniei, lățimea liniei, distanța față de text și umbra opțională. Ele sunt reprezentate de proprietăți cu același nume. Puteți obține diferite tipuri de margini combinând valorile proprietăților. În plus, ambele obiecte **BorderCollection** și **Border** vă permit să resetați aceste valori la valorile implicite apelând metoda [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Rețineți că atunci când proprietățile chenarului sunt resetate la valorile implicite, chenarul este invizibil.

| ![set-borders-shading-aspose-words-java](documentbuilder-to-modify-document-7.png) |
| :- |
Clasa [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) conține atribute de umbrire pentru elementele documentului. Puteți seta textura de umbrire dorită și culorile care sunt aplicate pe fundalul și prim-planul elementului.

Textura de umbrire este setată cu un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valoare de enumerare care permite aplicarea diferitelor modele obiectului **Shading**. De exemplu, pentru a seta o culoare de fundal pentru un element de document, utilizați [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valoare și setați culoarea de umbrire în prim plan, după caz.

| ![borders-and-shading-aspose-words-java](documentbuilder-to-modify-document-8.png) |
| :- |
Exemplul de mai jos arată cum să aplicați margini și umbrire unui paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Fixați la grilă

Aspose.Words oferă două proprietăți `ParagraphFormat.SnapToGrid` și `Font.SnapToGrid` pentru a obține și a seta proprietatea paragrafului snap la grilă.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Mutarea cursorului

### Detectarea poziției curente a cursorului

Puteți obține în cazul în care cursorul constructorului este poziționat în prezent în orice moment. Proprietatea [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) returnează nodul care este selectat în prezent în acest constructor. Nodul este un copil direct al unui paragraf. Orice operații de inserare pe care le efectuați folosind `DocumentBuilder` se vor insera înainte de `DocumentBuilder.CurrentNode`. Când paragraful curent este gol sau cursorul este poziționat chiar înainte de sfârșitul paragrafului, `DocumentBuilder.CurrentNode` returnează null.

De asemenea, puteți utiliza proprietatea [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), care primește paragraful selectat în prezent în acest **DocumentBuilder**. Exemplul below code arată cum să accesați nodul curent într-un constructor de documente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Mutarea la orice nod (paragrafe și copiii lor)

Dacă aveți un nod obiect document, care este un paragraf sau un copil direct al unui paragraf, puteți îndrepta cursorul constructorului către acest nod. Utilizați metoda [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) pentru a efectua acest lucru.
Următorul exemplu de cod arată cum să mutați o poziție a cursorului într-un nod specificat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Trecerea la începutul/sfârșitul documentului

Dacă trebuie să vă mutați la începutul documentului, apelați [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Dacă trebuie să vă deplasați la sfârșitul documentului, apelați [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Trecerea la o secțiune

Dacă lucrați cu un document care conține mai multe secțiuni, puteți trece la o secțiune dorită folosind [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Această metodă mută cursorul la începutul unei secțiuni specificate și acceptă indexul secțiunii necesare. Când indicele secțiunii este mai mare sau egal cu 0, acesta specifică un index de la începutul documentului cu 0 fiind prima secțiune. Când indexul secțiunii este mai mic de 0, specifică un index de la sfârșitul documentului cu -1 fiind ultima secțiune. Exemplul below code arată cum să mutați o poziție a cursorului în secțiunea specificată. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Trecerea la un antet/subsol

Când trebuie să plasați unele date într-un antet sau subsol, ar trebui să vă mutați mai întâi acolo folosind [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).Metoda acceptă o valoare de enumerare HeaderFooterType care identifică tipul de antet sau subsol unde ar trebui mutat cursorul.

Dacă doriți să creați anteturi și subsoluri diferite pentru prima pagină, trebuie să setați proprietatea [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) la **true**. Dacă doriți să creați anteturi și subsoluri diferite pentru paginile pare și impare, trebuie să setați [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) la **true**.

Dacă trebuie să reveniți la povestea principală, utilizați[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) pentru a vă deplasa din antet sau subsol. Exemplul de mai jos creează anteturi și subsoluri într-un document folosind DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Trecerea la un paragraf

Utilizați[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) pentru a muta cursorul la un paragraf dorit din secțiunea curentă. Ar trebui să treceți doi parametri la această metodă: paragraphIndex (indexul paragrafului la care să vă deplasați) și characterIndex (indexul caracterului din interiorul paragrafului).

Navigarea se efectuează în interiorul poveștii curente a secțiunii curente. Adică, dacă ați mutat cursorul în antetul principal al primei secțiuni, atunci paragraphIndex specifică indexul paragrafului din antetul acelei secțiuni.

Când paragraphIndex este mai mare sau egal cu 0, specifică un index de la începutul secțiunii cu 0 fiind primul paragraf. Când paragraphIndex este mai mic decât 0, specifică un index de la sfârșitul secțiunii cu -1 fiind ultimul paragraf. Indicele de caractere poate fi specificat în prezent doar ca 0 pentru a trece la începutul paragrafului sau -1 pentru a trece la sfârșitul paragrafului. Următorul exemplu de cod arată cum să mutați o poziție a cursorului la paragraful specificat. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Trecerea la o celulă de masă

Utilizați [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) dacă trebuie să mutați cursorul într-o celulă de tabel din secțiunea curentă. Această metodă acceptă patru parametri:

- tableIndex - indexul tabelului pentru a trece la.
- rowIndex - indexul rândului din tabel.
- columnIndex - indexul coloanei din tabel.
- characterIndex - indexul caracterului din interiorul celulei.

Navigarea se efectuează în interiorul poveștii curente a secțiunii curente.

Pentru parametrii indexului, atunci când indicele este mai mare sau egal cu 0, Acesta specifică un indice de la început cu 0 fiind primul element. Când indicele este mai mic de 0, Acesta specifică un indice de la sfârșit cu -1 fiind ultimul element.

De asemenea, rețineți că characterIndex în prezent poate specifica doar 0 pentru a trece la începutul celulei sau -1 pentru a trece la sfârșitul celulei. Următorul exemplu de cod arată cum să mutați o poziție a cursorului în celula de tabel specificată. Puteți descărca fișierul șablon al acestui exemplu din [aici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Trecerea la un marcaj

Marcajele sunt utilizate frecvent pentru a marca anumite locuri din document în care trebuie inserate elemente noi. Pentru a trece la un marcaj, utilizați [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Această metodă are două supraîncărcări. Cel mai simplu nu acceptă altceva decât numele marcajului în care urmează să fie mutat cursorul. Următorul exemplu de cod arată cum să mutați o poziție a cursorului într-un marcaj.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Această suprasarcină mută cursorul într-o poziție imediat după începerea marcajului cu numele specificat. O altă suprasarcină [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) mută cursorul la un marcaj cu o precizie mai mare. Acceptă doi parametri booleni suplimentari:

- isStart determină dacă să mutați cursorul la începutul sau la sfârșitul marcajului.
- isAfter determină dacă să mutați cursorul pentru a fi după poziția de început sau de sfârșit a marcajului sau să mutați cursorul pentru a fi înainte de poziția de început sau de sfârșit a marcajului.

Următorul exemplu de cod arată cum să mutați o poziție a cursorului imediat după terminarea marcajului.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Introducerea unui text nou în acest mod nu înlocuiește textul existent al marcajului. Rețineți că unele marcaje din document sunt atribuite câmpurilor de formular. Trecerea la un astfel de marcaj și introducerea textului acolo introduce textul în codul câmpului formularului. Deși acest lucru nu va invalida câmpul Formular, textul inserat nu va fi vizibil deoarece devine parte a codului câmpului.

### Trecerea la un câmp `Merge`

Uneori poate fi necesar să efectuați un" manual " Mail Merge folosind `DocumentBuilder` sau să completați un câmp de îmbinare într-un mod special în interiorul unui manipulator de evenimente mail merge. Atunci [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) ar putea fi util. Metoda acceptă numele câmpului de îmbinare. Mută cursorul într-o poziție chiar dincolo de câmpul de îmbinare specificat și elimină câmpul de îmbinare. Următorul exemplu de cod arată cum să mutați cursorul într-o poziție chiar dincolo de câmpul de îmbinare specificat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Cum se convertește între unitățile de măsură

Majoritatea proprietăților obiectului furnizate în Aspose.Words API care reprezintă unele măsurători (lățime/înălțime, margini și distanțe diferite) acceptă valori în puncte (1 inch este egal cu 72 puncte). Uneori acest lucru nu este convenabil, deci există clasa `ConvertUtil` care oferă funcții de ajutor pentru a converti între diferite unități de măsură. Permite conversia inci în puncte, puncte în inci, pixeli în puncte și puncte în pixeli. Când pixelii sunt convertiți în puncte și invers, acesta poate fi efectuat la rezoluții 96 dpi (puncte pe inch) sau la rezoluția dpi specificată.

**ConvertUtil**

Următorul exemplu de cod arată cum să specificați proprietățile paginii în inci.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
