---
title: Navigare cu cursorul în Java
second_title: Aspose.Words pentru Java
articleTitle: Navigare cu Cursor
linktitle: Navigare cu Cursor
description: "Navigați între diferite noduri dintr-un document, cum ar fi un paragraf, un marcaj sau un anumit caracter folosind Java."
type: docs
weight: 5
url: /ro/java/navigation-with-cursor/
---

În timp ce lucrați cu un document, chiar dacă este unul scurt sau lung, va trebui să navigați prin documentul dvs. Navigarea cu un cursor virtual reprezintă capacitatea de a naviga între diferite noduri dintr-un document.

Într-un document scurt, deplasarea într-un document este simplă, deoarece puteți muta punctul de inserare chiar și folosind tastele săgeată ale tastaturii sau făcând clic pe mouse pentru a localiza punctul de inserare oriunde doriți. Dar odată ce aveți un document mare care are multe pagini, aceste tehnici de bază vor fi insuficiente.

Acest articol explică cum să vă deplasați într-un document și să navigați cu un cursor virtual în diferite părți ale acestuia.

## Detectarea Poziției Curente A Cursorului

Înainte de a începe procesul de navigare prin documentul dvs., va trebui să obțineți nodul selectat în prezent. Puteți obține poziția exactă a cursorului la un nod selectat utilizând proprietatea [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). În plus, în loc să obțineți nodul curent, puteți obține paragraful selectat în prezent sau secțiunea selectată în prezent utilizând proprietățile [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) și [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Orice operații de inserare pe care le efectuați folosind [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) vor fi inserate înainte de [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Când paragraful curent este gol sau cursorul este poziționat chiar înainte de sfârșitul paragrafului, **CurrentNode** returnează null.

## Metode de navigare într-un Document

Când editați text, este important să știți cum să navigați în documentul dvs. și unde să vă deplasați exact în el. Aspose.Words vă permite să vă deplasați într – un document și să navigați la diferitele sale secțiuni și părți-acest lucru este similar cu funcționalitatea panoului de navigare din Microsoft Word pentru a accesa o pagină sau un titlu dintr-un document Word fără a derula.

Metoda principală este să puteți muta poziția cursorului într-un anumit nod din documentul dvs., puteți realiza acest lucru utilizând metoda [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

Următorul exemplu de cod arată cum să mutați **DocumentBuilder** la diferite noduri dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Dar, pe lângă metoda de bază **MoveTo**, există și altele mai specifice.

### Navigați la începutul sau la sfârșitul unui Document

Puteți merge la începutul sau la sfârșitul documentului utilizând metodele [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) și [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

Următorul exemplu de cod arată cum să mutați poziția cursorului la începutul sau la sfârșitul unui document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigați Cu Marcaje

Puteți marca un loc pe care doriți să îl găsiți și să îl mutați din nou cu ușurință. Puteți introduce câte marcaje doriți în document, apoi navigați prin ele identificând marcajele cu nume unice. Puteți trece la un marcaj utilizând metoda [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

Următoarele exemple de cod arată cum să mutați o poziție a cursorului într-un marcaj:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigați la celulele tabelului

Puteți trece la o celulă de tabel utilizând metoda [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Această metodă vă va permite să navigați cursorul în orice celulă dintr-un anumit tabel. În plus, puteți specifica un index pentru a muta cursorul în orice poziție sau caracter specificat într-o celulă din metoda **MoveToCell**.

Următorul exemplu de cod arată cum să mutați o poziție a cursorului într-o celulă de tabel specificată:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigați la un câmp

Puteți trece la un anumit câmp din documentul dvs. utilizând metoda [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). În plus, puteți trece la un anumit câmp de îmbinare utilizând metoda [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

Următorul exemplu de cod arată cum să mutați cursorul document builder într - un anumit câmp:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigați la un antet sau subsol

Puteți trece la începutul unui antet sau subsol utilizând metoda [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

Următorul exemplu de cod arată cum să mutați cursorul document builder într-un antet sau subsol de document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigați la o secțiune sau un paragraf

Puteți trece la o anumită secțiune sau paragraf utilizând metodele [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) sau [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). În plus, puteți specifica un index pentru a muta cursorul în orice poziție sau un caracter specificat într-un paragraf din metoda **MoveToParagraph**.

Următorul exemplu de cod arată cum să treceți la o anumită secțiune și la un anumit paragraf dintr-un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
