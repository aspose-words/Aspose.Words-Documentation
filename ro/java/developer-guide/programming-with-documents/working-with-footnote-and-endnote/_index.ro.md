---
title: Lucrul cu nota de subsol și nota de final în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu nota de subsol și nota de final
linktitle: Lucrul cu nota de subsol și nota de final
description: "Cum se manipulează notele de subsol și notele de final folosind Java."
type: docs
weight: 160
url: /ro/java/working-with-footnote-and-endnote/
---

Aspose.Words oferă, de asemenea, unele clase, metode și proprietăți pentru lucrul cu notele de subsol și notele de final.

## Introduceți nota finală și setați opțiunile de numerotare

Dacă doriți să inserați o notă de subsol sau o notă finală într-un document Word, vă rugăm să utilizați metoda [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Această metodă introduce o notă de subsol sau o notă finală în document.

Clasele [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) și [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) reprezintă opțiuni de numerotare pentru nota de subsol și nota de final.

Următorul exemplu de cod arată cum să inserați nota finală în document și să setați opțiunile de numerotare:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Setați numărul de coloane de aspect al Notei de subsol

Puteți seta numărul de coloane de aspect notă de subsol folosind [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) proprietate. Dacă această proprietate are valoarea 0, Zona note de subsol este formatată cu un număr de coloane pe baza numărului de coloane de pe pagina afișată.

Următorul exemplu de cod arată cum să setați numărul de coloane pentru aspectul notei de subsol:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Setați poziția notei de subsol și EndNote

Poziția notei de subsol poate fi în partea de jos a fiecărei pagini sau sub textul de pe fiecare pagină. Poziția endnote poate fi la sfârșitul secțiunii sau la sfârșitul documentului.

Următorul exemplu de cod arată cum să setați poziția notei de subsol și a notei de final:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
