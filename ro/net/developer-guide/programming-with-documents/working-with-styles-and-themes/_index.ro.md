---
title: Lucrul cu stiluri și teme în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu Stiluri și Temi
linktitle: Lucrul cu Stiluri și Temi
description: "Funcționalități avansate de formatare Microsoft Word, lucrul cu stiluri și teme folosind C#."
type: docs
weight: 110
url: /ro/net/working-with-styles-and-themes/
---

Clasa [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) se folosește pentru gestionarea setărilor încorporate și aplicarea setărilor definite de utilizator la stiluri.

## Accesarea Stilurilor

Poți obține o colecție de stiluri definite în document folosind proprietatea [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/). Această colecție deține atât stilurile încorporate, cât și cele definite de utilizator într-un document. O anumită stilistică ar putea fi obținută prin numele său/aliasul, identificatorul de stil sau indice. Exemplul de cod următor prezintă modul în care se obține accesul la colecția de stiluri definite în document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Cum să extragi conținut bazat pe stiluri

La un nivel simplu, recuperarea conținutului bazat pe stiluri dintr-un document Word poate fi utilă pentru identificarea, enumerarea și numărarea paragrafelor și șirurilor de text formatate cu un anumit stil. De exemplu, este posibil că va trebui să identifici anumite tipuri de conținut în document, cum ar fi exemple, titluri, referințe, cuvinte cheie, denumiri de figuri și studii de caz.

Pentru a lua acest lucru mai departe, acest lucru poate fi folosit, de asemenea, pentru a exploata structura documentului definit de stilurile pe care le folosește, pentru a repropune documentul pentru o altă ieșire, cum ar fi HTML. Acest lucru este într-adevăr modul în care documentația aspose este construită punând Aspose.Words la încercare. O unealtă construită folosind Aspose.Words ia documentele sursă Word și le împarte în subiecte la anumite niveluri de antet. "Un fișier XML este produs folosind Aspose.Words, care este folosit pentru a construi arborele de navigare pe care îl puteți vedea pe stânga." Și apoi Aspose.Words convertește fiecare subiect în HTML.

Soluția pentru recuperarea textului formatat cu anumite stiluri într-un document Word este, de obicei, economic și direct folosind Aspose.Words.

### Soluția

Pentru a ilustra cum ușor Aspose.Words returnează conținut pe baza stilurilor, să aruncăm o privire la un exemplu. În acest exemplu, vom recupera textul formatat cu un anumit stil de paragraf și un stil caracter dintr-un exemplu de document Word.La un nivel general, asta va implica: # Deschiderea unui document Word folosind clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/) # Obținerea colecțiilor tuturor paragrafelor și a tuturor războaielor în document # Selectarea numai a paragrafelor și a războaielor necesare. Mai exact, vom extrage textul formatat cu stilul de paragraful ‘Title 1’ și stilul de caracter ‘Intense Emphasis’ din acest exemplu de document Word.

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


În acest document de exemplu, textul formatat cu stilul paragraf "Heading 1" este "Insert Tab", "Quick Styles" și "Theme" iar textul formatat cu stilul caracter "Intense Emphasis" este instanțele repetate de text albastru, cursiv, subliniat, cum ar fi "galleries" și "overall look".

### Codul

Implementarea unei interogări bazate pe stil este destul de simplă în modelul obiectului Aspose.Words, deoarece folosește doar instrumente care sunt deja în vigoare. Au fost implementate două metode de clasă pentru această soluție:# **ParagraphsByStyleName** - Această metodă recuperează un tablou al paragrafelor din document care au un anumit nume de stil# **RunsByStyleName** - Această metodă recuperează un tablou al ratelor din document care au un anumit nume de stilAmbele metode sunt foarte asemănătoare, singura diferență fiind tipurile de noduri și reprezentarea informațiilor despre stil în nodurile de paragraf și rată.Iată o implementare a ParagraphsByStyleName: exemplu de mai jos găseşte toate paragrafele formatate cu stilul specificat.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Această implementare foloseşte şi metoda `Document.GetChildNodes` din clasa `Document`, care returnează o colecţie de toate nodurile cu tipul specificat, ceea ce în acest caz este toţi paragrafele.

Rețineți că al doilea parametru al metodei **Document.GetChildNodes** este setat la true. Aceasta îl forțează pe **Document.GetChildNodes** să selecteze de la toate nodurile copil recursiv, mai degrabă decât doar copiii imediati.

{{% /alert %}}

De asemenea merită remarcat faptul că colecția de paragrafe nu creează un supraîncărcare imediată deoarece paragrafele sunt încărcate în această colecție doar atunci când accesați articole din ele. Apoi, tot ce trebuie să faceți este să treceți prin colecție, folosind operatorul standard foreach și adăugați paragrafe care au stilul specificat în paragrafeCuStil matrice. Numele stilului `Paragraph` poate fi găsit în proprietatea [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) a obiectului [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/). Implementarea de RunByStyleName este aproape la fel, deși utilizăm evident [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) pentru a obține nodurile de alergare. Proprietatea [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) unui obiect [Run](https://reference.aspose.com/words/net/aspose.words/run/) este folosită pentru a accesa informațiile de stil din nodurile **Run**. Mai jos exemplele de toate alergările formatate cu stilul specificat.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Când ambele interogări sunt implementate, tot ce trebuie să faceți este să transmiteți un obiect de document și să specificați numele stilurilor conținutului pe care doriți să-l recuperați: exemplele de mai jos rulează interogări și afișează rezultatele. "Puteți descărca fișierul șablon al acestui exemplu de la [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx)."

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Rezultat Final

Când totul este făcut, rularea exemplului va afișa ieșirea următoare:

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


După cum se vede, acesta este un exemplu foarte simplu, arătând numărul și textul paragrafelor și al frazelor din exemplul Word document.

## Copiază toate stilurile din șablon

Sunt cazuri în care vrei să copiezi toate stilurile dintr-un document în altul. Puteți folosi metoda `Document.CopyStylesFromTemplate` pentru a copia stilurile din șablonul specificat către un document. Când stilurile sunt copiate dintr-o șablon într-un document, stiluri cu nume similare din document sunt redefinite pentru a se potrivi descrierilor de stil din șablon. Stilurile unice de la șablon sunt copiate în document. Stilurile unice din document rămân intacte. Exemplul de cod de mai jos arată cum să copiezi stiluri dintr-un document în altul.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Cum se manipulează proprietățile temei

Am adăugat suport de bază pentru API în Aspose.Words pentru a accesa proprietățile temei documentului. Pentru moment, aceasta API include următoarele obiecte publice:

- Temă
- Fonturi Tematice
"- TemaCuloare"

Iată cum poți obține proprietățile temei:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Și iată cum puteți seta proprietățile temei:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
