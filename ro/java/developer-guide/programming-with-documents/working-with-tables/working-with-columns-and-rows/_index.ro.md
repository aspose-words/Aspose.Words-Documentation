---
title: Lucrați cu coloane și rânduri în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrați cu coloane și rânduri
linktitle: Lucrați cu coloane și rânduri
description: "Lucrul cu părți ale unui tabel – rânduri, coloane și celule folosind Java. Specificați Rândul Antet Java."
type: docs
weight: 30
url: /ro/java/working-with-columns-and-rows/
---

Pentru mai mult control asupra modului în care funcționează tabelele, aflați cum să manipulați coloanele și rândurile.

## Găsiți indexul elementului de tabel

Coloanele, rândurile și celulele sunt gestionate accesând nodul documentului selectat prin indexul său. Găsirea indexului oricărui nod implică colectarea tuturor nodurilor copil de tipul elementului de la nodul părinte și apoi utilizarea metodei [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) pentru a găsi indexul nodului dorit în colecție.

### Găsiți indexul unui tabel într - un Document

Uneori poate fi necesar să faceți modificări la un anumit tabel dintr-un document. Pentru a face acest lucru, vă puteți referi la un tabel după indexul său.

Următorul exemplu de cod arată cum să recuperați indexul unui tabel dintr - un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Găsirea indexului unui rând într - un tabel

În mod similar, poate fi necesar să faceți modificări la un anumit rând dintr-un tabel selectat. Pentru a face acest lucru, vă puteți referi și la un rând prin indexul său.

Următorul exemplu de cod arată cum să recuperați indexul unui rând dintr-un tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Găsirea indexului unei celule la rând

În cele din urmă, poate fi necesar să faceți modificări la o anumită celulă și puteți face acest lucru și prin indexul celulei.

Următorul exemplu de cod arată cum să recuperați indexul unei celule într-un rând:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Lucrați cu coloane

În modelul obiectului Document Aspose.Words (DOM), nodul [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) este format din noduri [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) și apoi noduri [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). Astfel, în modelul de Obiect `Document` al Aspose.Words, ca și în documentele Word, nu există niciun concept de coloană.

Prin proiectare, rândurile tabelului din Microsoft Word și Aspose.Words sunt complet independente, iar proprietățile și operațiile de bază sunt conținute numai în rândurile și celulele tabelului. Acest lucru oferă tabelelor posibilitatea de a avea câteva atribute interesante:

- Fiecare rând de tabel poate avea un număr complet diferit de celule
- Pe verticală, celulele fiecărui rând pot avea lățimi diferite
- Este posibil să se alăture tabele cu diferite formate rând și numărul de celule

![work-with-columns-aspose-words-java](working-with-columns-and-rows-1.png)

Orice operațiuni efectuate pe coloane sunt de fapt "scurtături" care efectuează operația schimbând colectiv celulele rândurilor în așa fel încât să pară că sunt aplicate coloanelor. Adică, puteți efectua operații pe coloane prin simpla iterare a aceluiași index de celule de rând de tabel.

Următorul exemplu de cod simplifică astfel de operații prin dovedirea unei clase de fațadă care colectează celulele care alcătuiesc o" coloană " a unui tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Următorul exemplu de cod arată cum să inserați o coloană goală într-un tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Următorul exemplu de cod arată cum să eliminați o coloană dintr-un tabel dintr-un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Specificați rândurile ca rânduri de antet

Puteți alege să repetați primul rând din tabel ca rând de antet numai pe prima pagină sau pe fiecare pagină dacă tabelul este împărțit în mai multe. În Aspose.Words, puteți repeta rândul de antet pe fiecare pagină folosind proprietatea [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

De asemenea, puteți marca mai multe rânduri de antet dacă astfel de rânduri sunt situate unul după altul la începutul tabelului. Pentru a face acest lucru, trebuie să aplicați proprietățile **HeadingFormat** acestor rânduri.

{{% alert color="primary" %}}

Rețineți că rândurile de antet nu funcționează în tabelele imbricate. Adică, dacă aveți un tabel în interiorul altui tabel, această setare nu va avea niciun efect. Este o limitare a Microsoft Word care nu permite acest lucru, nu Aspose.Words.

{{% /alert %}}

Următorul exemplu de cod arată cum se construiește un tabel care include rânduri de antet care se repetă în paginile următoare:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Păstrați tabele și rânduri de rupere peste pagini {#keep-tables-and-rows-from-breaking-across-pages}

Există momente în care conținutul unui tabel nu trebuie împărțit pe pagini. De exemplu, dacă un titlu este deasupra unui tabel, titlul și tabelul ar trebui să fie întotdeauna păstrate împreună pe aceeași pagină pentru a păstra aspectul adecvat.

Există două tehnici separate care sunt utile pentru a realiza această funcționalitate:

- `Allow row break across pages`, care se aplică rândurilor de tabel
- `Keep with next`, care se aplică paragrafelor din celulele tabelului

În mod implicit, proprietățile de mai sus sunt dezactivate.

<img src="keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Păstrați un rând de rupere peste pagini {#keep-a-row-from-breaking-across-pages}

Aceasta implică restricționarea conținutului din interiorul celulelor unui rând de a fi împărțit pe o pagină. În Microsoft Word, Acest lucru poate fi găsit sub proprietățile tabelului ca opțiune"permiteți rândului să se rupă între pagini". În Aspose.Words Acest lucru se găsește sub obiectul [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) al unui [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) ca proprietate [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Următorul exemplu de cod arată cum să dezactivați ruperea rândurilor pe pagini pentru fiecare rând dintr-un tabel:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Păstrați un tabel de rupere peste pagini {#keep-a-table-from-breaking-across-pages}

Pentru a opri împărțirea tabelului între pagini, trebuie să specificăm că dorim ca conținutul conținut în tabel să rămână împreună.

Pentru a face acest lucru, Aspose.Words folosește o metodă, care permite utilizatorilor să selecteze un tabel și să activeze parametrul [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) la true pentru fiecare paragraf din celulele tabelului. Excepția este ultimul paragraf din tabel, care ar trebui setat la fals.

<img src="keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Următorul exemplu de cod arată cum să setați un tabel pentru a rămâne împreună pe aceeași pagină:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}