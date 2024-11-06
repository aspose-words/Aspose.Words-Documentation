---
title: Document Builder Prezentare generală în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Document Builder Prezentare Generală
linktitle: Document Builder Prezentare Generală
type: docs
description: "DocumentBuilder vă permite să construiți documente dinamice de la zero sau să adăugați elemente noi la cele existente folosind Python. DocumentBuilder oferă metode de inserare a textului, checkboxes, tabele, imagini și alte elemente de conținut în Python."
weight: 30
url: /ro/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) este o clasă puternică care se asociază cu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) și vă permite să construiți documente dinamice de la zero sau să adăugați elemente noi la unul existent.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) oferă metode pentru a insera text, checkboxes, obiecte ole, paragrafe, liste, tabele, imagini și alte elemente de conținut. Vă permite să specificați fonturi, formatare paragraf sau secțiune și să efectuați alte operații.

## Document Builder sau Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) completează clasele și metodele disponibile în Aspose.Words Document Object Model (DOM) pentru a simplifica cele mai comune sarcini de construire a documentelor. Adică, puteți crea și modifica conținutul documentelor atât prin Aspose.Words DOM, care necesită o bună înțelegere a structurii arborelui, cât și folosind DocumentBuilder. `DocumentBuilder` este o "fațadă" pentru structura complexă **Document** care vă permite să inserați rapid și ușor conținut și formatare.

Operațiile care sunt posibile cu [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sunt, de asemenea, posibile atunci când se utilizează direct clasele Aspose.Words DOM. Cu toate acestea, utilizarea directă a claselor Aspose.Words DOM necesită de obicei mai multe linii de cod decât utilizarea [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navigare Documente

Navigarea documentelor se bazează pe conceptul de cursor virtual, cu ajutorul căruia vă puteți muta într-o altă locație din document folosind diferite metode **DocumentBuilder.move_to_XXX**, cum ar fi [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) și [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Acest cursor virtual indică unde va fi inserat textul la apelarea metodelor [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), și altele. Consultați următorul articol "navigare cu Cursor" pentru a afla mai multe despre cursorul virtual.

Următorul exemplu de cod arată cum să navigați la un marcaj:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Construirea și modificarea documentelor

Aspose.Words API oferă mai multe clase care sunt responsabile pentru formatarea diferitelor elemente ale unui document. Fiecare dintre clase încapsulează proprietăți de formatare legate de un anumit element de document, cum ar fi text, paragraf, secțiune și altele. De exemplu, clasa [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) reprezintă proprietățile de formatare a caracterelor, clasa [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) reprezintă proprietățile de formatare a paragrafelor și așa mai departe. Obiectele acestor clase sunt returnate de proprietățile corespunzătoare [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), care au aceleași nume ca și clasele. Prin urmare, le puteți accesa și seta formatarea dorită în timpul construirii documentului.

De asemenea, puteți insera text, checkbox, obiect ole, imagini, marcaje, câmpuri de formular și alte elemente de document în poziția cursorului folosind metoda `Write` sau oricare dintre metodele **DocumentBuilder.insert_XXX**, cum ar fi [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) și metode similare.

Să vedem cum să creăm un document simplu folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Creați un Document folosind DocumentBuilder

Pentru a începe, trebuie să creați un [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) și să îl asociați cu un obiect [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Creați o nouă instanță de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) apelând constructorul său și o transmiteți unui obiect [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) pentru atașare la constructor.

Pentru a insera un text, treceți șirul de text pe care trebuie să îl inserați în document la metoda [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

Următorul exemplu de cod arată cum să creați un document simplu folosind un constructor de documente.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Specificați Formatarea Documentului

Proprietatea [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) definește formatarea textului. Acest obiect conține atribute de font diferite (numele fontului, dimensiunea fontului, culoarea și așa mai departe). Unele atribute importante ale fontului sunt, de asemenea, reprezentate de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Proprietăți pentru a vă permite să le accesați direct. Acestea sunt proprietățile booleene [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) și [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

Următorul exemplu de cod arată cum să inserați un text formatat folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) specifică formatarea caracterelor care va fi aplicată întregului text inserat începând cu poziția curentă din document.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) specifică formatarea paragrafului pentru paragrafele curente și toate paragrafele care trebuie inserate.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) specifică proprietățile paginii și secțiunii pentru secțiunea curentă și întreaga secțiune care va fi inserată.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) și [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) specificați proprietățile de formatare care vor fi aplicate celulelor și rândurilor tabelului începând cu poziția curentă din document.

În această situație," curent " înseamnă poziția, paragraful, secțiunea, celula sau rândul în care se află cursorul.

{{% /alert %}}

{{% alert color="primary" %}}

Rețineți că proprietățile [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) și [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) sunt actualizate ori de câte ori navigați la o altă locație din document pentru a reflecta proprietățile de formatare ale acestei locații.

{{% /alert %}}
