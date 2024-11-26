---
title: Lucrul cu Footnote și Endnote în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrarea cu Footnote și Endnote
linktitle: Lucrarea cu Footnote și Endnote
description: "Cum să manipulezi note de subsol și note finale folosind C#."
type: docs
weight: 160
url: /ro/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă de asemenea câteva clase, metode și proprietăți pentru lucrul cu note de subsol și note finale.

## Introduceți Notă de subsol și Setați Opțiuni Numărare

Dacă doriți să introduceți o notă de subsol sau o notă de subsol într-un document Word, vă rugăm să folosiți metoda [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/). Această metodă inserează o notă de subsol sau o notă de subsol în document.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) și [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) clase reprezintă opțiuni de numerotare pentru notă de subsol și notă de subsol

Exemplul de cod următor arată cum să inserați o notă de subsol în document și să setaţi opțiunile sale numerotare:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Numărul de coloane în layoutul notei

Puteți seta numărul de coloane de notă folosind proprietatea [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/). Dacă această proprietate are valoarea de 0, zona de note de subsol este formatată cu un număr de coloane bazat pe numărul de coloane de pe pagina afișată.

Exemplul următor de cod arată cum să setăm numărul de coloane pentru aspectul de notă de subsol:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Stabilește poziția notelor de subsol și a notelor finale

Poziția notei de subsol poate fi în partea inferioară a fiecărei pagini sau sub textul din fiecare pagină. Poziția endnote poate fi la sfârșitul secțiunii sau la sfârșitul documentului.

Exemplul de cod următor arată cum să setați poziția de foot note și notă de subsol:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
