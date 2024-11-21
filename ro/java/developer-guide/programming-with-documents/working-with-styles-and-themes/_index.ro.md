---
title: Lucrul cu stiluri și teme
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu stiluri și teme
linktitle: Lucrul cu stiluri și teme
description: "Caracteristici îmbunătățite de formatare Microsoft Word, lucrul cu stiluri și teme folosind Java."
type: docs
weight: 110
url: /ro/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Clasa [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) este utilizată pentru a gestiona setările încorporate și pentru a aplica setările definite de utilizator stilurilor.

## Cum să extrageți conținut pe baza stilurilor

La un nivel simplu, preluarea conținutului pe baza stilurilor dintr-un document Word poate fi utilă pentru identificarea, listarea și numărarea paragrafelor și a rulărilor de text formatate cu un anumit stil. De exemplu, poate fi necesar să identificați anumite tipuri de conținut din document, cum ar fi exemple, titluri, referințe, cuvinte cheie, nume de figuri și studii de caz.

Pentru a face acest lucru câțiva pași mai departe, acest lucru poate fi, de asemenea, utilizat pentru a valorifica structura documentului, definită de stilurile pe care le folosește, pentru a reutiliza documentul pentru o altă ieșire, cum ar fi HTML. Acesta este de fapt modul în care este construită documentația Aspose, punând Aspose.Words la încercare. Un instrument construit folosind Aspose.Words ia documentele Word sursă și le împarte în subiecte la anumite niveluri de titlu. Un fișier XML este produs folosind Aspose.Words care este folosit pentru a construi arborele de navigare pe care îl puteți vedea în stânga. Și apoi Aspose.Words convertește fiecare subiect în HTML. Soluția pentru recuperarea textului formatat cu stiluri specifice într-un document Word este de obicei economică și simplă folosind Aspose.Words.

Pentru a ilustra cât de ușor gestionează Aspose.Words preluarea conținutului pe baza stilurilor, să ne uităm la un exemplu. În acest exemplu, vom prelua text formatat cu un anumit stil de paragraf și un stil de caractere dintr-un exemplu de document Word.

La un nivel înalt, acest lucru va implica:

1. Deschiderea unui document Word folosind clasa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Obținerea colecțiilor tuturor paragrafelor și a tuturor rulărilor din document.
1. Selectarea numai paragrafele necesare și se execută.

Mai exact, vom prelua textul formatat cu stilul de paragraf 'Heading 1 'și stilul de caractere 'intens accent' din acest exemplu de document Word.

![working-with-styles-aspose-words-java-1](working-with-styles-1.png)

În acest exemplu de document, textul formatat cu stilul de paragraf' Heading 1 ' este 'Insert Tab', ' Quick Styles 'și' Theme', iar textul formatat cu stilul de caractere' Intense accounts 'este format din mai multe instanțe de text Albastru, cursiv, aldin, cum ar fi' galerii 'și'look general'.

Implementarea unei interogări bazate pe stil este destul de simplă în modelul obiectului document Aspose.Words, deoarece folosește pur și simplu instrumente care sunt deja în vigoare. Pentru această soluție sunt implementate două metode de clasă:

1. **ParagraphsByStyleName** - această metodă preia o serie de paragrafe din document care au un nume de stil specific.
1. **RunsByStyleName** - această metodă preia o matrice a acelor rulări din document care au un nume de stil specific.

Ambele metode sunt foarte similare, singurele diferențe fiind tipurile de noduri și reprezentarea informațiilor de stil în cadrul nodurilor paragraf și run. Iată o implementare a ParagraphsByStyleName prezentată în exemplul de cod de mai jos pentru a găsi toate paragrafele formatate cu stilul specificat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Această implementare utilizează, de asemenea, metoda [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) a clasei `Document`, care returnează o colecție de toate nodurile copil imediate.

De asemenea, merită subliniat faptul că colecția paragrafe nu creează o cheltuială imediată, deoarece paragrafele sunt încărcate în această colecție numai atunci când accesați articole din ele.Apoi, tot ce trebuie să faceți este să Parcurgeți colecția, folosind operatorul standard foreach și să adăugați paragrafe care au stilul specificat la matricea paragraphsWithStyle. Numele stilului `Paragraph` poate fi găsit în proprietatea [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) a obiectului [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

Implementarea RunsByStyleName este aproape aceeași, deși evident folosim `NodeType.Run` pentru a prelua nodurile run. Proprietatea [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) a unui obiect [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) este utilizată pentru a accesa informații de stil în nodurile **Run**.

Următorul exemplu de cod găsește toate rulările formatate cu stilul specificat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Când ambele interogări sunt implementate, tot ce trebuie să faceți este să treceți un obiect document și să specificați numele stilului conținutului pe care doriți să îl preluați:

{{% /alert %}}

Următorul exemplu de cod rulează interogări și afișează rezultatele.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Când totul se face, rularea eșantionului va afișa următoarea ieșire:

![working-with-styles-aspose-words-java-2](working-with-styles-2.png)

După cum puteți vedea, acesta este un exemplu foarte simplu, care arată numărul și textul paragrafelor colectate și rulează în documentul Word eșantion.

## Inserați Separator de stil pentru a pune diferite stiluri de paragraf

Separatorul de stil poate fi adăugat la sfârșitul unui paragraf folosind comanda rapidă de la tastatură Ctrl + Alt + Enter în MS Word. Această caracteristică permite două stiluri diferite de paragraf utilizate într-un paragraf tipărit logic. Dacă doriți ca un text de la începutul unui anumit titlu să apară într-un cuprins, dar nu doriți ca întregul titlu să apară în Cuprins, puteți utiliza această caracteristică.

Următorul exemplu de cod arată cum să inserați un separator de stil pentru a pune diferite stiluri de paragraf.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copiați toate stilurile din șablon

Există cazuri în care doriți să copiați toate stilurile dintr-un document în altul. Puteți utiliza metoda `Document.CopyStylesFromTemplate` pentru a copia stiluri din șablonul specificat într-un document. Când stilurile sunt copiate dintr-un șablon într-un document, stilurile cu nume similare din document sunt redefinite pentru a se potrivi descrierilor de stil din șablon. Stilurile unice din șablon sunt copiate în document. Stilurile unice din document rămân intacte.

Următorul exemplu de cod arată cum să copiați stiluri dintr-un document în altul.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Cum să manipulați proprietățile temei

Am adăugat basic API în Aspose.Words pentru a accesa proprietățile temei documentului. Pentru moment, acest API include următoarele obiecte publice:

- Tema
- ThemeFonts
- ThemeColors

Iată cum puteți obține proprietăți tematice:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Iată cum puteți seta proprietățile temei:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
