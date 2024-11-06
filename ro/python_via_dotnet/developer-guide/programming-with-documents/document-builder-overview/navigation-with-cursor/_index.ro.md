---
title: Navigare cu cursorul în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Navigare cu Cursor
linktitle: Navigare cu Cursor
description: "Navigați între diferite noduri dintr-un document, cum ar fi un paragraf, un marcaj sau un anumit caracter folosind Python."
type: docs
weight: 10
url: /ro/python-net/navigation-with-cursor/
---

În timp ce lucrați cu un document, chiar dacă este unul scurt sau lung, va trebui să navigați prin documentul dvs. Navigarea cu un cursor virtual reprezintă capacitatea de a naviga între diferite noduri dintr-un document.

Într-un document scurt, deplasarea într-un document este simplă, deoarece puteți muta punctul de inserare chiar și folosind tastele săgeată ale tastaturii sau făcând clic pe mouse pentru a localiza punctul de inserare oriunde doriți. Dar odată ce aveți un document mare care are multe pagini, aceste tehnici de bază vor fi insuficiente.

Acest articol explică cum să vă deplasați într-un document și să navigați cu un cursor virtual în diferite părți ale acestuia.

## Detectarea Poziției Curente A Cursorului

Înainte de a începe procesul de navigare prin documentul dvs., va trebui să obțineți nodul selectat în prezent. Puteți obține poziția exactă a cursorului la un nod selectat utilizând proprietatea [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). În plus, în loc să obțineți nodul curent, puteți obține paragraful selectat în prezent sau secțiunea selectată în prezent utilizând proprietățile [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) și [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Orice operații de inserare pe care le efectuați folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vor fi inserate înainte de [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Când paragraful curent este gol sau cursorul este poziționat chiar înainte de sfârșitul paragrafului, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) nu returnează niciunul.

## Metode de navigare într-un Document

Când editați text, este important să știți cum să navigați în documentul dvs. și unde să vă deplasați exact în el. Aspose.Words vă permite să vă deplasați într – un document și să navigați la diferitele sale secțiuni și părți-acest lucru este similar cu funcționalitatea panoului de navigare din Microsoft Word pentru a accesa o pagină sau un titlu dintr-un document Word fără a derula.

Metoda principală este să puteți muta poziția cursorului într-un anumit nod din documentul dvs., puteți realiza acest lucru utilizând metoda [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

Următorul exemplu de cod arată cum să mutați [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) la diferite noduri dintr-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Dar, pe lângă metoda de bază [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/), există și altele mai specifice.

### Navigați la începutul sau la sfârșitul unui Document

Puteți merge la începutul sau la sfârșitul documentului utilizând metodele [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) și [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

Următorul exemplu de cod arată cum să mutați poziția cursorului la începutul sau la sfârșitul unui document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigați Cu Marcaje

Puteți marca un loc pe care doriți să îl găsiți și să îl mutați din nou cu ușurință. Puteți introduce câte marcaje doriți în document, apoi navigați prin ele identificând marcajele cu nume unice. Puteți trece la un marcaj utilizând metoda [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Următoarele exemple de cod arată cum să mutați o poziție a cursorului într-un marcaj:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigați la celulele tabelului

Puteți trece la o celulă de tabel utilizând metoda [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Această metodă vă va permite să navigați cursorul în orice celulă dintr-un anumit tabel. În plus, puteți specifica un index pentru a muta cursorul în orice poziție sau caracter specificat într-o celulă din metoda [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

Următorul exemplu de cod arată cum să mutați o poziție a cursorului într-o celulă de tabel specificată:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigați la un câmp

Puteți trece la un anumit câmp din documentul dvs. utilizând metoda [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). În plus, puteți trece la un câmp de îmbinare specific utilizând metoda [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

Următorul exemplu de cod arată cum să mutați cursorul document builder într - un anumit câmp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigați la un antet sau subsol

Puteți trece la începutul unui antet sau subsol utilizând metoda [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/).

Următorul exemplu de cod arată cum să mutați cursorul document builder într-un antet sau subsol de document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigați la o secțiune sau un paragraf

Puteți trece la o anumită secțiune sau paragraf utilizând metodele [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) sau [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). În plus, puteți specifica un index pentru a muta cursorul în orice poziție sau un caracter specificat într-un paragraf din metoda [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

Următorul exemplu de cod arată cum să treceți la o anumită secțiune și la un anumit paragraf dintr-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}