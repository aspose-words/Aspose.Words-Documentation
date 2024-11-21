---
title: Lucrul cu stiluri în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu stiluri
linktitle: Lucrul cu stiluri
description: "Caracteristici îmbunătățite de formatare Microsoft Word, lucrul cu stiluri și teme folosind C++."
type: docs
weight: 110
url: /ro/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Clasa [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) este utilizată pentru a gestiona setările încorporate și pentru a aplica setările definite de utilizator stilurilor.

## Cum să extrageți conținut pe baza stilurilor

La un nivel simplu, preluarea conținutului pe baza stilurilor dintr-un document Word poate fi utilă pentru identificarea, listarea și numărarea paragrafelor și a rulărilor de text formatate cu un anumit stil. De exemplu, poate fi necesar să identificați anumite tipuri de conținut din document, cum ar fi exemple, titluri, referințe, cuvinte cheie, nume de figuri și studii de caz.

Pentru a face acest lucru câțiva pași mai departe, acest lucru poate fi, de asemenea, utilizat pentru a valorifica structura documentului, definită de stilurile pe care le folosește, pentru a reutiliza documentul pentru o altă ieșire, cum ar fi HTML. Acesta este de fapt modul în care este construită documentația Aspose, punând Aspose.Words la încercare. Un instrument construit folosind Aspose.Words ia documentele Word sursă și le împarte în subiecte la anumite niveluri de titlu. Un fișier XML este produs folosind Aspose.Words care este folosit pentru a construi arborele de navigare pe care îl puteți vedea în stânga. Și apoi Aspose.Words convertește fiecare subiect în HTML.

Soluția pentru recuperarea textului formatat cu stiluri specifice într-un document Word este de obicei economică și simplă folosind Aspose.Words.

### Soluția

Pentru a ilustra cât de ușor gestionează Aspose.Words preluarea conținutului pe baza stilurilor, să ne uităm la un exemplu. În acest exemplu, vom prelua text formatat cu un anumit stil de paragraf și un stil de caractere dintr-un exemplu de document Word. La un nivel înalt, acest lucru va implica:
- Deschiderea unui document Word folosind clasa `Document`.
- Obținerea colecțiilor tuturor paragrafelor și a tuturor rulărilor din document.
- Selectarea numai paragrafele necesare și se execută. Mai exact, vom prelua textul formatat cu stilul de paragraf 'Heading 1 'și stilul de caractere 'intens accent' din acest exemplu de document Word.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


În acest exemplu de document, textul formatat cu stilul de paragraf' Heading 1 ' este 'Insert Tab', ' Quick Styles 'și' Theme', iar textul formatat cu stilul de caractere' Intense accounts 'este format din mai multe instanțe de text Albastru, cursiv, aldin, cum ar fi' galerii 'și'look general'.

### Codul

Implementarea unei interogări bazate pe stil este destul de simplă în modelul obiectului document Aspose.Words, deoarece folosește pur și simplu instrumente care sunt deja în vigoare. Pentru această soluție sunt implementate două metode de clasă: # **ParagraphsByStyleName** - această metodă preia o serie de paragrafe din document care au un nume de stil specific.# **RunsByStyleName** - această metodă preia o matrice a acelor rulări din document care au un nume de stil specific. Ambele metode sunt foarte similare, singurele diferențe fiind tipurile de noduri și reprezentarea informațiilor de stil în cadrul nodurilor paragraf și run. Iată o implementare a ParagraphsByStyleName. Exemplul de mai jos găsiți toate paragrafele formatate cu stilul specificat.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Această implementare utilizează, de asemenea, metoda `Document.GetChildNodes` a clasei `Document`, care returnează o colecție a tuturor nodurilor cu tipul specificat, care în acest caz în toate paragrafele.

Rețineți că al doilea parametru al metodei **Document.GetChildNodes** este setat la true. Acest lucru forțează metoda **Document.GetChildNodes** să selecteze recursiv din toate nodurile copil, mai degrabă decât să selecteze doar copiii imediati.

{{% /alert %}}

De asemenea, merită subliniat faptul că colecția paragrafe nu creează o cheltuială imediată, deoarece paragrafele sunt încărcate în această colecție numai atunci când accesați articole din ele. Apoi, tot ce trebuie să faceți este să Parcurgeți colecția, folosind standardul pentru fiecare operator și să adăugați paragrafe care au stilul specificat la matricea paragraphsWithStyle. Numele stilului `Paragraph` poate fi găsit în stil. Proprietatea numelui obiectului `Paragraph.ParagraphFormat`. Implementarea RunsByStyleName este aproape aceeași, deși evident folosim `NodeType.Run` pentru a prelua nodurile run. Proprietatea `Font.Style` a unui obiect `Run` este utilizată pentru a accesa informații de stil în nodurile **Run**. Exemplul below code găsește toate rulările formatate cu stilul specificat.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Când ambele interogări sunt implementate, tot ce trebuie să faceți este să treceți un obiect document și să specificați numele stilului conținutului pe care doriți să îl preluați: mai jos exemplu rulați interogări și afișați rezultatele. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Rezultatul Final

Când totul se face, rularea eșantionului va afișa următoarea ieșire:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


După cum puteți vedea, acesta este un exemplu foarte simplu, care arată numărul și textul paragrafelor colectate și rulează în documentul Word eșantion.

## Cum să inserați și să lucrați cu câmpul cuprins

Adesea veți lucra cu documente care conțin un cuprins (TOC). Folosind Aspose.Words puteți introduce propriul Cuprins sau puteți reconstrui complet cuprinsul existent în document folosind doar câteva linii de cod. Acest articol prezintă modul de lucru cu câmpul cuprins și demonstrează:

- Cum se introduce un brand nou `TOC`
- Actualizați TOCs nou sau existent în document.
- Specificați comutatoare pentru a controla formatarea și structura generală f TOC.
- Cum se modifică stilurile și aspectul cuprinsului.
- Cum să eliminați un întreg câmp `TOC` împreună cu toate intrările din document.

### Introduceți TC Câmpuri

Adesea, o linie specifică de text este desemnată pentru `TOC` și este marcată cu un câmp `TC`. Modul simplu de a face acest lucru în MS Word este să evidențiați textul și să apăsați *ALT+SHIFT+O*. Aceasta creează automat un câmp `TC` folosind textul selectat. Aceeași tehnică poate fi realizată prin cod. Codul de mai jos va găsi textul care se potrivește cu intrarea și va introduce un câmp `TC` în aceeași poziție cu textul. Codul se bazează pe aceeași tehnică utilizată în articol. Exemplul de mai jos arată cum să găsiți și să inserați un câmp `TC` la textul dintr-un document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Modificați un cuprins

#### Modificați formatarea stilurilor

Formatarea intrărilor din `TOC` nu utilizează stilurile originale ale intrărilor marcate, în schimb, fiecare nivel este formatat folosind un stil echivalent `TOC`. De exemplu, primul nivel din `TOC` este formatat cu stilul **TOC1**, al doilea nivel formatat cu stilul **TOC2** și așa mai departe. Aceasta înseamnă că pentru a schimba aspectul `TOC` aceste stiluri trebuie modificate. În Aspose.Words aceste stiluri sunt reprezentate de locale independent `StyleIdentifier.TOC1` până la `StyleIdentifier.TOC9` și pot fi recuperate din colecția `Document.Styles` folosind acești identificatori. Odată ce stilul corespunzător al documentului a fost preluat, formatarea pentru acest stil poate fi modificată. Orice modificare a acestor stiluri va fi reflectată automat pe TOCs din document. Exemplul below code modifică o proprietate de formatare utilizată în primul nivel `TOC` stil.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

De asemenea, este util să rețineți că orice formatare directă a unui paragraf (definit pe paragraful în sine și nu în stil) marcat pentru a fi inclus `TOC` va fi copiat în intrarea din TOC. De exemplu, dacă stilul Heading 1 este folosit pentru a marca conținutul pentru `TOC` și acest stil are formatare cu caractere aldine, în timp ce paragraful are, de asemenea, formatare cursivă aplicată direct acestuia. Intrarea `TOC` rezultată nu va fi aldină, deoarece face parte din formatarea stilului, dar va fi cursivă, deoarece aceasta este formatată direct în paragraf. De asemenea, puteți controla formatarea separatoarelor utilizate între fiecare intrare și numărul paginii. În mod implicit, aceasta este o linie punctată care este răspândită în numerotarea paginilor folosind un caracter de filă și un stop de filă din dreapta aliniat aproape de marginea din dreapta.

Folosind clasa `Style` recuperată pentru nivelul `TOC` pe care doriți să îl modificați, puteți modifica și modul în care acestea apar în document. Pentru a schimba modul în care apare mai întâi `Style.ParagraphFormat` trebuie apelat pentru a prelua formatarea paragrafului pentru stil. Din aceasta, opririle de filă pot fi recuperate apelând `ParagraphFormat.TabStops` și opritorul de filă corespunzător modificat. Folosind aceeași tehnică, fila în sine poate fi mutată sau eliminată cu totul. Exemplul below code arată cum să modificați poziția opritorului de filă din dreapta în paragrafele legate de `TOC`. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Eliminarea unui cuprins din Document

Un cuprins poate fi eliminat din document prin eliminarea tuturor nodurilor găsite între nodul `FieldStart` și FieldEnd din câmpul `TOC`. Codul de mai jos demonstrează acest lucru. Eliminarea câmpului `TOC` este mai simplă decât un câmp normal, deoarece nu ținem evidența câmpurilor imbricate. În schimb, verificăm nodul `FieldEnd` este de tip `FieldType.FieldTOC` ceea ce înseamnă că am întâlnit sfârșitul curentului TOC. Această tehnică poate fi utilizată în acest caz fără a vă îngrijora de câmpurile imbricate, deoarece putem presupune că orice document format corect nu va avea un câmp `TOC` complet imbricat în interiorul unui alt câmp `TOC`. În primul rând, nodurile `FieldStart` ale fiecărui `TOC` sunt colectate și stocate. `TOC` specificat este apoi enumerat astfel încât toate nodurile din câmp sunt vizitate și stocate. Nodurile sunt apoi eliminate din document. Exemplul below code demonstrează cum să eliminați un `TOC` specificat dintr-un document. Puteți descărca fișierul șablon al acestui exemplu de aici.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Inserați Separator de stil pentru a pune diferite stiluri de paragraf

Separatorul de stil poate fi adăugat la sfârșitul unui paragraf folosind comanda rapidă de la tastatură Ctrl + Alt + Enter în MS Word. Această caracteristică permite două stiluri diferite de paragraf utilizate într-un paragraf tipărit logic. Dacă doriți ca un text de la începutul unui anumit titlu să apară într-un cuprins, dar nu doriți ca întregul titlu să apară în Cuprins, puteți utiliza această caracteristică. Exemplul below code arată cum să inserați un separator de stil pentru a pune diferite stiluri de paragraf.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Copiați toate stilurile din șablon

Există cazuri în care doriți să copiați toate stilurile dintr-un document în altul. Puteți utiliza metoda `Document.CopyStylesFromTemplate` pentru a copia stiluri din șablonul specificat într-un document. Când stilurile sunt copiate dintr-un șablon într-un document, stilurile cu nume similare din document sunt redefinite pentru a se potrivi descrierilor de stil din șablon. Stilurile unice din șablon sunt copiate în document. Stilurile unice din document rămân intacte. Exemplul below code arată cum să copiați stiluri dintr-un document în altul.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
