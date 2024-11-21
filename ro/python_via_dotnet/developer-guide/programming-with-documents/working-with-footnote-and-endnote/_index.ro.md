---
title: Lucrul cu nota de subsol și nota de final
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu nota de subsol și nota de final
linktitle: Lucrul cu nota de subsol și nota de final
description: "Introduceți ffotnotes sau endnotes într-un document și specificați opțiunile acestuia folosind Python."
type: docs
weight: 160
url: /ro/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words oferă, de asemenea, unele clase, metode și proprietăți pentru lucrul cu notele de subsol și notele de final.

## Introduceți nota finală și setați opțiunile de numerotare

Dacă doriți să inserați nota de subsol sau nota finală în documentul Word, vă rugăm să utilizați metoda [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Această metodă introduce o notă de subsol sau o notă finală în document.

Clasele [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) și [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) reprezintă opțiuni de numerotare pentru nota de subsol și nota de final.

Următorul exemplu de cod arată cum să inserați nota finală în document și să setați opțiunile de numerotare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Setați numărul de coloane de aspect al Notei de subsol

Puteți seta numărul de coloane de aspect al notei de subsol folosind proprietatea [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Dacă această proprietate are valoarea 0, Zona note de subsol este formatată cu un număr de coloane pe baza numărului de coloane de pe pagina afișată.

Următorul exemplu de cod arată cum să setați numărul de coloane pentru aspectul notei de subsol:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Setați poziția notei de subsol și EndNote

Poziția notei de subsol poate fi în partea de jos a fiecărei pagini sau sub textul de pe fiecare pagină. Poziția endnote poate fi la sfârșitul secțiunii sau la sfârșitul documentului.

Următorul exemplu de cod arată cum să setați poziția notei de subsol și a notei de final:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
