---
title: Creaţi sau încărcaţi un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Creează sau Încarcă un Document
linktitle: Creează sau Încarcă un Document
type: docs
url: /ro/net/create-or-load-a-document/
description: "Creați un document gol sau încărcați-l dintr-un fișier sau flux folosind C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Măcar orice sarcină pe care vrei s-o faci cu Aspose.Words implică încărcarea unui document. Clasa `Document` reprezintă un document încărcat în memorie. Documentul are mai mulți constructori suprascrieți care îți permit să creezi un document gol sau să îl încarci dintr-un fișier sau dintr-un flux. Documentul poate fi încărcat în orice format de încărcare suportat de Aspose.Words. Pentru lista tuturor formatelor de încărcare acceptate, vedeți enumerarea [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Creează un nou document {#create-a-new-document}

"Vom apela constructorul [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) fără parametri pentru a crea un nou document gol." Dacă vrei să generezi un document programatic, cea mai simplă cale este să folosești clasa [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) pentru a adăuga conținutul documentului.

Exemplul următor de cod arată cum se poate crea un document folosind constructorul de documente:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "create-new-document.cs" >}}

{{% alert color="primary" %}}

Notă valorile implicite:

"- Un document gol conține o secțiune cu parametri standard, un paragraf gol și unele stiluri de document." De fapt acest document este același ca și rezultatul creării documentului "New" în Microsoft Word.
- Dimensiunea paginii de documente este [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/). **Letter**.

{{% /alert %}}

## Încarcă un document {#load-a-document}

Pentru a încărca un document existent în orice dintre cele [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formate, transmiteți numele fișierului sau fluxul într-unul din constructorii de documente. Formatul documentului încărcat este determinat automat de extensia sa.

### Încarcă dintr-un fişier {#load-from-a-file}

Pass a filename as a string to the Document constructor to open an existing document from a file.

Exemplul de cod următor arată cum să deschideţi un document dintr-un fişier:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-document.cs" >}}

Poţi descărca fișierul şablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Încarcă dintr-un flux {#load-from-a-stream}

Pentru a deschide un document dintr-un flux, treceți pur și simplu un obiect de flux care conține documentul în constructorul Document.

Exemplul următor de cod arată cum să deschideţi un document dintr-un flux:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-from-stream.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fişierul şablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
