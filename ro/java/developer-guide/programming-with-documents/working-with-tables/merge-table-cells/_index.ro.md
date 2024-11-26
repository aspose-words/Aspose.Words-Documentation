---
title: Îmbinați celulele tabelului în în Java
second_title: Aspose.Words pentru Java
articleTitle: Îmbinați Celulele Tabelului
linktitle: Îmbinați Celulele Tabelului
description: "Cum să îmbinați celulele tabelului în Java. Verificați dacă celulele dintr-un tabel sunt îmbinate folosind Java."
type: docs
weight: 40
url: /ro/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Uneori, anumite rânduri dintr-un tabel necesită un titlu sau blocuri mari de text care ocupă întreaga lățime a tabelului. Pentru proiectarea corectă a tabelului, utilizatorul poate îmbina mai multe celule de tabel într-una. Aspose.Words acceptă celule îmbinate atunci când lucrați cu toate formatele de intrare, inclusiv importul de conținut HTML.

## Cum să îmbinați celulele tabelului

În Aspose.Words, celulele fuzionate sunt reprezentate de următoarele proprietăți ale clasei [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) care descrie dacă celula este o parte a unei fuziuni orizontale de celule
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) care descrie dacă celula este o parte a unei fuziuni verticale de celule

Valorile acestor proprietăți determină comportamentul de îmbinare al celulelor:

- Prima celulă dintr-o secvență de celule fuzionate va avea [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Orice celule fuzionate ulterior vor avea [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- O celulă care nu este îmbinată va avea [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Uneori, la încărcarea celulelor de document existente într-un tabel, acestea vor apărea îmbinate. Cu toate acestea, poate fi de fapt o celulă lungă – uneori Microsoft Word exportă celule fuzionate în acest fel. Acest lucru poate fi confuz atunci când încercați să lucrați cu celule individuale, dar nu pare să existe un model special cu privire la momentul în care se întâmplă acest lucru.

{{% /alert %}}

## Verificarea dacă o celulă este îmbinată

Pentru a verifica dacă o celulă face parte dintr-o secvență de celule îmbinate, verificăm pur și simplu proprietățile **HorizontalMerge** și **VerticalMerge**.

Următorul exemplu de cod arată cum să imprimați tipul de îmbinare a celulelor orizontale și verticale:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Îmbinați Celulele Tabelului Atunci Când Utilizați DocumentBuilder

Pentru a îmbina celulele într – un tabel creat cu [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), trebuie să setați tipul de îmbinare corespunzător pentru fiecare celulă în care se așteaptă îmbinarea-mai întâi **CellMerge.First** și apoi **CellMerge.Previous**.

De asemenea, trebuie să vă amintiți să ștergeți setarea de îmbinare pentru acele celule în care nu este necesară îmbinarea – acest lucru se poate face prin setarea primei celule care nu merge la **CellMerge.None**. Dacă acest lucru nu se face, toate celulele din tabel vor fi îmbinate.

Următorul exemplu de cod arată cum se creează un tabel cu două rânduri în care celulele din primul rând sunt îmbinate orizontal:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Următorul exemplu de cod arată cum se creează un tabel cu două coloane în care celulele din prima coloană sunt îmbinate vertical:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Îmbinați celulele tabelului în alte cazuri

În alte situații în care **DocumentBuilder** nu este utilizat, cum ar fi într-un tabel existent, fuziunea celulelor în modul anterior poate să nu fie la fel de ușoară. În schimb, putem înfășura operațiile de bază implicate în aplicarea proprietăților de îmbinare celulelor într-o metodă care face sarcina mult mai ușoară. Această metodă este similară cu metoda de automatizare a fuziunii, care este chemată să fuzioneze o gamă de celule dintr-un tabel.

Codul de mai jos va îmbina celulele tabelului în intervalul specificat, începând de la celula dată și terminând la celula finală. În acest caz, intervalul poate cuprinde mai multe rânduri sau coloane:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Următorul exemplu de cod arată cum să îmbinați o gamă de celule între două celule specificate:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Celule combinate verticale și orizontale în tabelul HTML

După cum am spus în articolele anterioare, un tabel în Microsoft Word este un set de rânduri independente. Fiecare rând are un set de celule care sunt independente de celulele altor rânduri. Astfel, în tabelul Microsoft Word nu există un astfel de obiect ca o "coloană", iar "coloana 1" este ceva de genul "setul celulelor 1 ale fiecărui rând din tabel". Acest lucru permite utilizatorilor să aibă un tabel în care, de exemplu, rândul 1 este format din două celule – 2cm și 1cm, iar rândul 2 este format din două celule diferite – 1cm și 2cm lățime. Și Aspose.Words susține acest concept de tabele.

Un tabel din HTML are o structură esențial diferită: fiecare rând are același număr de celule și (este important pentru sarcină) fiecare celulă are lățimea coloanei corespunzătoare, aceeași pentru toate celulele dintr-o singură coloană. Deci, dacă **HorizontalMerge** și **VerticalMerge** returnează o valoare incorectă, utilizați următorul exemplu de cod:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertiți în celule fuzionate orizontal

Uneori nu este posibil să se detecteze care celule sunt fuzionate deoarece unele versiuni mai noi ale Microsoft Word nu mai folosesc steagurile de îmbinare atunci când celulele sunt fuzionate orizontal. Dar pentru situațiile în care celulele sunt fuzionate într-o celulă orizontal prin lățimea lor folosind steaguri de îmbinare, Aspose.Words oferă metoda `ConvertToHorizontallyMergedCells` pentru a converti celulele. Această metodă transformă pur și simplu tabelul și adaugă celule noi după cum este necesar.

Următorul exemplu de cod arată metoda de mai sus în funcțiune:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
