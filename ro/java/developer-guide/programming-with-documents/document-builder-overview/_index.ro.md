---
title: Document Builder Prezentare generală în Java
second_title: Aspose.Words pentru Java
articleTitle: Document Builder Prezentare Generală
linktitle: Document Builder Prezentare Generală
type: docs
description: "DocumentBuilder vă permite să construiți documente dinamice de la zero sau să adăugați elemente noi la cele existente. DocumentBuilder oferă metode de inserare a textului, checkboxes, tabele, imagini și alte elemente de conținut în Java."
weight: 30
url: /ro/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) este o clasă puternică care se asociază cu [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) și vă permite să construiți documente dinamice de la zero sau să adăugați elemente noi la unul existent.

**DocumentBuilder**

## Document Builder sau Aspose.Words DOM

**DocumentBuilder**

Operațiile care sunt posibile cu **DocumentBuilder** sunt, de asemenea, posibile atunci când se utilizează direct clasele Aspose.Words DOM. Cu toate acestea, utilizarea directă a claselor Aspose.Words DOM necesită de obicei mai multe linii de cod decât utilizarea **DocumentBuilder**.

## Navigare Documente

Navigarea documentelor se bazează pe conceptul de cursor virtual, cu ajutorul căruia vă puteți muta într-o altă locație din document folosind diferite metode **DocumentBuilder.MoveToXXX**, cum ar fi [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) și [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Acest cursor virtual indică unde va fi inserat textul la apelarea metodelor [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), și altele. Consultați următorul articol "navigare cu Cursor" pentru a afla mai multe despre cursorul virtual.

Următorul exemplu de cod arată cum să navigați la un marcaj:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Construirea și modificarea documentelor

Aspose.Words API oferă mai multe clase care sunt responsabile pentru formatarea diferitelor elemente ale unui document. Fiecare dintre clase încapsulează proprietăți de formatare legate de un anumit element de document, cum ar fi text, paragraf, secțiune și altele. De exemplu, clasa [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) reprezintă proprietățile de formatare a caracterelor, clasa [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) reprezintă proprietățile de formatare a paragrafelor și așa mai departe. Obiectele acestor clase sunt returnate de proprietățile corespunzătoare **DocumentBuilder**, care au aceleași nume ca și clasele. Prin urmare, le puteți accesa și seta formatarea dorită în timpul construirii documentului.

De asemenea, puteți insera text, checkbox, obiect ole, imagini, marcaje, câmpuri de formular și alte elemente de document în poziția cursorului folosind metoda `Write` sau oricare dintre metodele **DocumentBuilder.InsertXXX**, cum ar fi [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) și metode similare.

Să vedem cum să creăm un document simplu folosind **DocumentBuilder**.

### Creați un Document folosind DocumentBuilder

Pentru a începe, trebuie să creați un **DocumentBuilder** și să îl asociați cu un obiect **Document**. Creați o nouă instanță de **DocumentBuilder** apelând constructorul său și o transmiteți unui obiect **Document** pentru atașare la constructor.

Pentru a insera un text, treceți șirul de text pe care trebuie să îl inserați în document la metoda **Write**.

Următorul exemplu de cod arată cum să creați un document simplu folosind un constructor de documente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Specificați Formatarea Documentului

Proprietatea [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) definește formatarea textului. Acest obiect conține atribute de font diferite (numele fontului, dimensiunea fontului, culoarea și așa mai departe). Unele atribute importante ale fontului sunt, de asemenea, reprezentate de **DocumentBuilder** proprietăți pentru a vă permite să le accesați direct. Acestea sunt proprietățile booleene [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) și [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

Următorul exemplu de cod arată cum să inserați un text formatat folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) specifică formatarea caracterelor care va fi aplicată întregului text inserat începând cu poziția curentă din document.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) specifică formatarea paragrafului pentru paragrafele curente și toate paragrafele care trebuie inserate.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) specifică proprietățile paginii și secțiunii pentru secțiunea curentă și întreaga secțiune care va fi inserată.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) și [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) specificați proprietățile de formatare care vor fi aplicate celulelor și rândurilor tabelului începând cu poziția curentă din document.

În această situație," curent " înseamnă poziția, paragraful, secțiunea, celula sau rândul în care se află cursorul.

{{% /alert %}}

{{% alert color="primary" %}}

Rețineți că proprietățile **Font**, **ParagraphFormat** și **PageSetup** sunt actualizate ori de câte ori navigați la o altă locație din document pentru a reflecta proprietățile de formatare ale acestei locații.

{{% /alert %}}
