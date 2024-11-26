---
title: Lucraţi cu coloane şi rânduri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu coloane și rânduri
linktitle: Lucrul cu coloane și rânduri
description: "`Lucrul cu părți ale unei tabele – rânduri, coloane și celule folosind C#`. Specificați rând antet în C#."
type: docs
weight: 30
url: /ro/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Pentru mai mult control asupra modului în care funcţionează tabelele, învăţaţi cum să manipulaţi coloanele şi rândurile.

## Găseşte Indicele Elementului Tabel {#find-the-index-of-table-elements}

Coloanele, rândurile și celulele sunt gestionate prin accesarea nodului de document selectat după indicele său. Găsirea indicelui unui nod implică colectarea tuturor nodurilor copil ale tipului de element din nodul părinte, și apoi folosirea metodei [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) pentru a găsi indicele nodului dorit în colecție.

### Găsiți Indicele unei Tabeli într-un Document {#find-the-index-of-table-in-a-document}

Uneori, s-ar putea să aveți nevoie de a face schimbări la o masă specifică într-un document. Pentru a face acest lucru poți să te referi la o tabelă prin indicele său.

Exemplul de cod următor prezintă modul în care se poate obține indicele unei tabele dintr-un document:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Găsește Indicele unei Rânduri într-o Tabelă {#find-the-index-of-a-row-in-a-table}

Similar, s-ar putea să fie necesar să faci modificări la un rând specific într-o tabelă selectată. Pentru aceasta, puteți face referire și la o rând prin indexul acestuia.

Exemplul următor de cod arată cum se obține indicele unei rânduri într-o masă:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Găsiți Indicele unei Celule într-o Rând {#find-the-index-of-a-cell-in-a-row}

În final, s-ar putea să aveți nevoie să faceți modificări la o anumită celulă și puteți face acest lucru prin celula ca bine.

Exemplul de cod următor arată cum se obține indicele unei celule într-un rând:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Lucrează cu coloane {#work-with-columns}

În Aspose.Words Document Object Model (DOM), nodul [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) constă din [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) noduri și apoi [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) noduri. Astfel, în modelul obiectelor `Document` din Aspose.Words, așa cum este cazul și în documentele Word, nu există ideea de coloană.

Prin design, rândurile din Microsoft Word și Aspose.Words sunt complet independente; iar proprietățile de bază și operațiunile sunt conținute doar în rândurile și celulele tabelului. Acest lucru îi dă tabelelor capacitatea de a avea câteva atribute interesante:

- Fiecare rând de tabel poate avea un număr complet diferit de celule
- Celulele fiecărei rânduri pot avea lățimi diferite
- Este posibil să se unească tabele cu formate de rând diferite și număr de celule

Orice operații efectuate pe coloane sunt, de fapt, "scurtături" care efectuează operația prin schimbarea colectivă a celulelor rândului în așa fel încât să pară că se aplică la coloane. Adică, puteți efectua operații pe coloane prin simpla iterare peste același index de celulă a rândului din tabel.

Exemplul de cod următor simplifică astfel de operațiuni prin furnizarea unei clase "facade" care colectează celulele care alcătuiesc o coloană dintr-o tabelă:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Exemplul de cod următor arată cum să inserezi o coloană goală într-o tabelă:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Exemplul de cod următor arată cum să elimini o coloană dintr-o masă într-un document:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Specificați rândurile ca rânduri de antet

Puteți alege să repetați primul rând din tabel ca și rând de antet numai pe prima pagină sau pe fiecare pagină dacă tabelul este împărțit în mai multe. În Aspose.Words, poţi repeta linia de antet pe fiecare pagină folosind proprietatea [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Puteți marca, de asemenea, mai multe rânduri de antet dacă aceste rânduri sunt situate unul după altul la începutul tabelului. Pentru a face asta trebuie să aplici proprietățile **HeadingFormat** acestor rânduri.

{{% alert color="primary" %}}

Notă că rândurile de antet nu funcționează în tabele imbricate. Adică, dacă aveți o masă într-o altă masă, această setare nu va avea niciun efect. Este o limitare a lui Microsoft Word care nu permite asta, nu Aspose.Words.

{{% /alert %}}

Exemplul de cod de mai jos arată cum să construiești o tabelă care include rânduri de antet care se repetă pe paginile ulterioare:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Păstrați tabele și rânduri de la a se rupe pe pagină {#keep-tables-and-rows-from-breaking-across-pages}

Sunt momente în care conținutul unei tabele nu ar trebui să fie împărțit pe pagini. De exemplu, dacă un titlu se află deasupra unei tabele, titlul și tabelul ar trebui să fie întotdeauna păstrate împreună pe aceeași pagină pentru a păstra o aspectare corespunzătoare.

Există două tehnici separate care sunt utile pentru a realiza această funcționalitate:

- `Allow row break across pages`, care este aplicat rândurilor de masă
- `Keep with next`, care este aplicat paragrafelor în celule de tabelă

În mod implicit, proprietățile de mai sus sunt dezactivate.

### Păstrați rânduri de la a se rupe pe pagini {#keep-a-row-from-breaking-across-pages}

Acest lucru presupune restricționarea conținutului din celulele unei rânduri de la a fi împărțit pe pagină. În Microsoft Word, aceasta poate fi găsită sub proprietățile Tabelului ca opțiunea "Permite rândului să se spargă pe pagini. În Aspose.Words aceasta este găsită sub obiectul [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) al unui [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), ca proprietatea [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

Exemplul de cod următor arată cum să dezactivați ruperea rândurilor peste pagini pentru fiecare rând dintr-o tabelă:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Păstrează un tabel de la a se rupe pe pagini {#keep-a-table-from-breaking-across-pages}

Ca să împiedicăm ca o masă să se împartă peste pagini, avem nevoie să specificăm că vreau conținutul cuprins în masă să rămână împreună.

Pentru acest lucru, Aspose.Words folosește o metodă, care permite utilizatorilor să selecteze un tabel și să activeze parametrul [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) la true pentru fiecare paragraf din celulele tabelului. "Excepția este ultimul paragraf din tabel, care ar trebui să fie setat la false."

Exemplul de cod următor arată cum se setează o masă care să rămână împreună pe aceeași pagină:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}
