---
title: Lucrul cu nota de subsol și nota de final în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu nota de subsol și nota de final
linktitle: Lucrul cu nota de subsol și nota de final
description: "Cum se manipulează notele de subsol și notele de final folosind C++."
type: docs
weight: 160
url: /ro/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă, de asemenea, unele clase, metode și proprietăți pentru lucrul cu notele de subsol și notele de final.

## Introduceți nota finală și setați opțiunile de numerotare

Dacă doriți să inserați o notă de subsol sau o notă finală într-un document Word, utilizați metoda [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Această metodă introduce o notă de subsol sau o notă finală în document.

Clasele [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) și [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) reprezintă opțiuni de numerotare pentru nota de subsol și nota de final.

Următorul exemplu de cod arată cum să inserați nota finală în document și să setați opțiunile de numerotare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Setați numărul de coloane de aspect al Notei de subsol

Puteți seta numărul de coloane de aspect al notei de subsol folosind proprietatea [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Dacă această proprietate are o valoare de 0, Zona note de subsol este formatată cu un număr de coloane pe baza numărului de coloane de pe pagina afișată.

Următorul exemplu de cod arată cum să setați numărul de coloane pentru aspectul notei de subsol:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Setați poziția notei de subsol și EndNote

Poziția notei de subsol poate fi în partea de jos a fiecărei pagini sau sub textul de pe fiecare pagină. Poziția endnote poate fi la sfârșitul secțiunii sau la sfârșitul documentului.

Următorul exemplu de cod arată cum să setați poziția notei de subsol și a notei de final:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
