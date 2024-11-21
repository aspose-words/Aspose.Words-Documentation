---
title: Prezentare generală a Document Builder în C#
second_title: Aspose.Words pentru .NET
articleTitle: Prezentare generală a constructorului de documente
linktitle: Prezentare generală a constructorului de documente
type: docs
description: "DocumentBuilder vă permite să construiți documente dinamice din nimic sau să adăugați noi elemente la cele existente folosind C#. DocumentBuilder oferă metode pentru inserarea textului, a casetelor de selectare, tabelelor, imaginilor și altor elemente de conținut în .NET."
weight: 30
url: /ro/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) este o clasă puternică care se asociază cu [Document](https://reference.aspose.com/words/net/aspose.words/document/) și îți permite să construiești documente dinamice de la început sau să adaugi noi elemente unui document existent.

**DocumentBuilder** oferă metode pentru inserarea textului, a casetelor de selectare, obiectelor OLE, paragrafelor, listelor, tabelelor, imaginilor și altor elemente de conținut. Îți permite să specifici fonturi, formatare a paragrafelor sau secțiuni și alte operații.

## Construitor de documente sau Aspose.Words DOM

**DocumentBuilder** completează clase și metode disponibile în Aspose.Words Document Object Model (DOM), pentru a simplifica sarcinile de construire a documentelor cele mai des întâlnite. "adică, poţi crea şi modifica conţinutul documentelor atât prin intermediul Aspose.Words DOM, ceea ce necesită o bună înţelegere a structurii arborescente, cât şi folosind DocumentBuilder-ul." The `DocumentBuilder` este un "față" pentru structura complexă **Document**, care îți permite să introduci rapid și ușor conținut și formatare.

Operații care sunt posibile cu **DocumentBuilder** sunt și posibil atunci când se utilizează clasele din Aspose.Words DOM direct. Însă folosind Aspose.Words DOM direct de obicei necesită mai multe linii de cod decât folosind **DocumentBuilder**.

## Navigare document

Navigarea documentelor se bazează pe conceptul unui cursor virtual, cu care puteți muta la o altă locație în document folosind diverse **DocumentBuilder.MoveToXXX** metode precum [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) și [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Acest cursor virtual indică locul unde va fi introdus textul atunci când se apelează metodele [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) și altele. Vedeți articolul următor "Navigarea cu Cursor" pentru a afla mai multe despre cursorul virtual.

Exemplul de cod următor arată cum să navighezi către un bookmark:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Construirea şi modificarea documentelor

Aspose.Words API oferă mai multe clase care sunt responsabile de formatarea diverselor elemente dintr-un document. Fiecare dintre clase încapsulează proprietăți de formatare legate de un anumit element de document, cum ar fi textul, paragraful, secțiunea și altele. De exemplu, clasa [Font](https://reference.aspose.com/words/net/aspose.words/font/) reprezintă proprietățile de formatare a caracterelor, clasa [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) reprezintă proprietățile de formatare a paragrafelor și așa mai departe. Obiectele acestor clase sunt returnate de proprietățile corespunzătoare **DocumentBuilder**, care au aceleași nume ca și clasele respective. Prin urmare, puteți accesa și seta formatarea dorită în timpul construcției documentului.

"Poţi introduce, de asemenea, text, casete de selectare, obiecte OLE, imagini, semnale, câmpuri de formular și alte elemente ale documentului la poziția cursorului folosind metoda `Write` sau oricare dintre metodele **DocumentBuilder.InsertXXX**, cum ar fi [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) și metode similare."

Să vedem cum se creează un document simplu folosind **DocumentBuilder**.

### Creează un document folosind DocumentBuilder

Pentru a începe trebuie să creezi un **DocumentBuilder** și să îl asociezi cu un obiect **Document**. Tu creezi o instanță nouă de **DocumentBuilder** prin apelarea constructorului său și îi treci în obiectul **Document** pentru atașare la constructor.

Pentru a insera un text, transmiteți șirul de caractere pe care doriți să-l introduceți în document către metoda **Write**.

Exemplul de cod următor arată cum să creezi un document simplu folosind un constructor de documente.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Specificaţi formatarea documentului

Proprietatea [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) definește formatarea textului. Acest obiect conține diferite atribute de tip de font (nume font, dimensiune font, culoare și așa mai departe). Unele atribute importante de font sunt reprezentate și de proprietăți **DocumentBuilder** pentru a vă permite să le accesați direct. Acestea sunt proprietățile booleene [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) și [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/).

Exemplul următor de cod arată cum să inserați un text formatat folosind **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) specifică formatarea caracterelor care vor fi aplicate tuturor textelor inserate din poziția curentă a documentului în continuare.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) specifică formatarea paragrafelor pentru paragraful curent și toate paragrafele care urmează să fie inserate.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) specifică proprietățile paginii și secțiunii pentru secțiunea curentă și întreaga secțiune care va fi inserată.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) și [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) specifică proprietăți de formatare care vor fi aplicate la celulele și rândurile din tabel începând cu poziția curentă în document.

În această situație, "curent" înseamnă poziția, paragraf, secțiune, celulă sau rând în care se află cursorul.

{{% /alert %}}

{{% alert color="primary" %}}

Observați că proprietățile **Font**, **ParagraphFormat** și **PageSetup** sunt actualizate ori de câte ori navigați către o altă locație în document pentru a reflecta proprietățile de formatare ale acelei locații.

{{% /alert %}}
