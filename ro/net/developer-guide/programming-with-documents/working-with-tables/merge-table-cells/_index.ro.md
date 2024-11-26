---
title: Fuziune celule tabulare în C#
second_title: Aspose.Words pentru .NET
articleTitle: Fuse Celulele Tabelului
linktitle: Fuse Celulele Tabelului
description: "Cum să fuzionezi celulele tabelului în C#. Verificați dacă celulele dintr-o tabelă sunt combinate folosind C#."
type: docs
weight: 40
url: /ro/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Uneori anumite rânduri dintr-o tabelă necesită un antet sau blocuri mari de text care ocupă întreaga lățime a tabelului. Pentru un design corect al tabelului utilizatorul poate uni mai multe celule într-una singură. Aspose.Words acceptă celule fuzionate atunci când lucrează în toate formatele de intrare, inclusiv importul conținutului HTML.

## Cum să fuziuni celule de tabel

În Aspose.Words, celulele fuzionate sunt reprezentate de următoarele proprietăți ale clasei [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) care descrie dacă celula este o parte dintr-o fuziune orizontală de celule
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) care descrie dacă celula face parte dintr-o fuziune verticală de celule

Valorile acestor proprietăți determină comportamentul de fuziune a celulelor

"- prima celulă dintr-o secvență de celule fuzionate va avea [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)"
- Orice celule fuzionate ulterior vor avea [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- O celulă care nu este fuzionată va avea [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Uneori, atunci când se încarcă celulele existente ale unui document într-o tabelă, acestea vor părea fuzionate. Cu toate acestea, poate fi de fapt o singură celulă - uneori Microsoft Word exportă celule fuzionate în acest fel. Acest lucru poate fi confuz atunci când încerci să lucrezi cu celule individuale, dar nu pare să existe vreun model specific cu privire la momentul în care acest lucru se întâmplă.

{{% /alert %}}

## Verificaţi dacă celula este fuzionată

Pentru a verifica dacă o celulă este parte dintr-o secvență de celule fuzionate, verificăm pur și simplu proprietățile **HorizontalMerge** și **VerticalMerge**.

Exemplul de cod următor arată cum să se imprime tipul de fuziune a celulelor orizontale și verticale:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Fuziunea celulelor de tabel atunci când se utilizează document builder-ul

Pentru a combina celule într-o tabelă creată cu [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), trebuie să setați tipul de combinare corespunzător pentru fiecare celulă unde se așteaptă combinarea – mai întâi **CellMerge.First** și apoi **CellMerge.Previous**.

De asemenea, trebuie să ţii minte să elimini setarea de fuziune pentru celulele în care nu este necesară fuziunea – aceasta poate fi făcută prin setarea primei celule nefuziate la **CellMerge.None**. Dacă nu se face asta, toate celulele din tabel vor fi fuzionate.

Exemplul de cod următor arată cum să creezi o tabelă cu două rânduri în care celulele din primul rând sunt fuzionate orizontal:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Exemplul următor de cod arată cum să creezi o tabelă cu două coloane, unde celulele din prima coloană sunt fuzionate vertical:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Fuse Celulele Tabelului în Alte Cazuri

În alte situații în care **DocumentBuilder** nu este folosit, cum ar fi într-o masă existentă, fuzionarea celulelor în acest fel poate să nu fie la fel de ușoară. În schimb, putem înveli operațiile de bază implicate în aplicarea proprietăților de fuziune la celule într-o metodă care face sarcina mult mai ușoară. Acest metod este asemanator cu metoda de automatizare Merge, care se apeleaza pentru a combina o gama de celule intr-o tabelă.

Codul de mai jos va uni celulele din intervalul specificat, începând cu celula dată și terminând la celula de sfârșit. În acest caz, intervalul poate să cuprindă mai multe rânduri sau coloane:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Exemplul de cod următor arată cum să uniți un interval de celule între două celule specificate:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

În funcție de versiunea .NET Framework pe care o utilizați, poate doriți să rafinați această metodă prin transformarea acesteia într-o metodă extensie. În acest caz, poţi apela direct această metodă pe o celulă pentru a combina un interval de celule, cum ar fi `cell1.Merge(cell2)`.

## Celule verticale și orizontale fuzionate în HTML tabel

Așa cum am spus în articolele anterioare, un tabel în Microsoft Word este un set de rânduri independente. Fiecare rând are un set de celule care sunt independente de celulele altor rânduri. Aşadar, în Microsoft Word tabel nu există un astfel de obiect ca o "coloană", iar "1-a coloană" este ceva asemănător cu "setul de 1-e celule din fiecare rând din tabel". Acest lucru permite utilizatorilor să aibă o masă în care, de exemplu, rândul 1 constă din două celule - 2 cm și 1 cm, iar rândul 2 constă din două celule diferite - 1 cm și 2 cm largi. Și Aspose.Words suportă această concepție de tabele.

O masă în HTML are o structură esențial diferită: fiecare rând are același număr de celule și (este important pentru sarcină) fiecare celulă are lățimea coloanei corespunzătoare, aceeași pentru toate celulele din unu rând. Deci dacă **HorizontalMerge** și **VerticalMerge** returnează o valoare incorectă, folosiți exemplul de cod următor:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de exemplu al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Converteste la celule fuzionate orizontal

Uneori nu este posibil să se detecteze care celule sunt fuzionate deoarece unele versiuni mai noi ale Microsoft Word nu utilizează steagurile de fuziune atunci când celulele sunt fuzionate orizontal. Dar pentru situaţii în care celulele sunt fuzionate într-o singură celulă orizontal prin lățimea lor folosind steaguri de fuziune, Aspose.Words oferă metoda `ConvertToHorizontallyMergedCells` pentru a converti celulele. Această metodă transformă pur și simplu tabelul și adaugă noi celule după cum este necesar.

Exemplul următor de cod arată metoda de mai sus în acțiune":

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
