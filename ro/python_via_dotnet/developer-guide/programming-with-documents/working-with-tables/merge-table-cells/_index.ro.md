---
title: Îmbinați Celulele Tabelului
second_title: Aspose.Words pentru Python via .NET
articleTitle: Îmbinați Celulele Tabelului
linktitle: Îmbinați Celulele Tabelului
description: "Cum să îmbinați celulele tabelului în Python. Verificați dacă celulele dintr-un tabel sunt îmbinate folosind Python."
type: docs
weight: 40
url: /ro/python-net/working-with-merged-cells/
---

Uneori, anumite rânduri dintr-un tabel necesită un titlu sau blocuri mari de text care ocupă întreaga lățime a tabelului. Pentru proiectarea corectă a tabelului, utilizatorul poate îmbina mai multe celule de tabel într-una. Aspose.Words acceptă celule îmbinate atunci când lucrați cu toate formatele de intrare, inclusiv importul de conținut HTML.

## Cum să îmbinați celulele tabelului

În Aspose.Words, celulele fuzionate sunt reprezentate de următoarele proprietăți ale clasei [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) care descrie dacă celula este o parte a unei fuziuni orizontale de celule
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) care descrie dacă celula este o parte a unei fuziuni verticale de celule

Valorile acestor proprietăți determină comportamentul de îmbinare al celulelor:

- Prima celulă dintr-o secvență de celule fuzionate va avea [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Orice celule fuzionate ulterior vor avea [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- O celulă care nu este îmbinată va avea [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Uneori, la încărcarea celulelor de document existente într-un tabel, acestea vor apărea îmbinate. Cu toate acestea, poate fi de fapt o celulă lungă – uneori Microsoft Word exportă celule fuzionate în acest fel. Acest lucru poate fi confuz atunci când încercați să lucrați cu celule individuale, dar nu pare să existe un model special cu privire la momentul în care se întâmplă acest lucru.

{{% /alert %}}

## Verificați dacă celula este îmbinată

Pentru a verifica dacă o celulă face parte dintr-o secvență de celule îmbinate, verificăm pur și simplu proprietățile **HorizontalMerge** și **VerticalMerge**.

Următorul exemplu de cod arată cum să imprimați tipul de îmbinare a celulelor orizontale și verticale:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Îmbinați Celulele Tabelului Atunci Când Utilizați DocumentBuilder

Pentru a îmbina celulele într – un tabel creat cu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), trebuie să setați tipul de îmbinare corespunzător pentru fiecare celulă în care se așteaptă îmbinarea-mai întâi **CellMerge.First** și apoi **CellMerge.Previous**.

De asemenea, trebuie să vă amintiți să ștergeți setarea de îmbinare pentru acele celule în care nu este necesară îmbinarea – acest lucru se poate face prin setarea primei celule care nu merge la **CellMerge.None**. Dacă acest lucru nu se face, toate celulele din tabel vor fi îmbinate.

Următorul exemplu de cod arată cum se creează un tabel cu două rânduri în care celulele din primul rând sunt îmbinate orizontal:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Următorul exemplu de cod arată cum se creează un tabel cu două coloane în care celulele din prima coloană sunt îmbinate vertical:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Îmbinați celulele tabelului în alte cazuri

În alte situații în care **DocumentBuilder** nu este utilizat, cum ar fi într-un tabel existent, fuziunea celulelor în modul anterior poate să nu fie la fel de ușoară. În schimb, putem înfășura operațiile de bază implicate în aplicarea proprietăților de îmbinare celulelor într-o metodă care face sarcina mult mai ușoară. Această metodă este similară cu metoda de automatizare a fuziunii, care este chemată să fuzioneze o gamă de celule dintr-un tabel.

Codul de mai jos va îmbina celulele tabelului în intervalul specificat, începând de la celula dată și terminând la celula finală. În acest caz, intervalul poate cuprinde mai multe rânduri sau coloane:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Următorul exemplu de cod arată cum să îmbinați o gamă de celule între două celule specificate:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

În funcție de versiunea cadrului pe care îl utilizați, poate doriți să rafinați această metodă transformând-o într-o metodă de extensie. În acest caz, puteți apela această metodă direct pe o celulă pentru a îmbina o gamă de celule, cum ar fi `cell1.Merge(cell2)`.

## Convertiți în celule fuzionate orizontal

Uneori nu este posibil să se detecteze care celule sunt fuzionate deoarece unele versiuni mai noi ale Microsoft Word nu mai folosesc steagurile de îmbinare atunci când celulele sunt fuzionate orizontal. Dar pentru situațiile în care celulele sunt fuzionate într-o celulă orizontal prin lățimea lor folosind steaguri de îmbinare, Aspose.Words oferă metoda `ConvertToHorizontallyMergedCells` pentru a converti celulele. Această metodă transformă pur și simplu tabelul și adaugă celule noi după cum este necesar.

Următorul exemplu de cod arată metoda de mai sus în funcțiune:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
